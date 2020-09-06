" === COC ===

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" extension
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-yaml',
    \ 'coc-vimlsp',
    \ 'coc-go',
    \ 'coc-jedi',
    \ 'coc-tsserver',
    \ 'coc-sh',
    \ 'coc-sql',
    \ 'coc-html',
    \ 'coc-markdownlint',
    \ 'coc-css',
    \ 'coc-emmet',
    \ 'coc-explorer',
    \ 'coc-highlight',
    \ 'coc-yank',
    \ 'coc-pairs',
    \ 'coc-docker',
    \ 'coc-lists',
    \ 'coc-ultisnips',
    \ 'coc-fzf-preview',
    \ 'coc-calc',
  \ ]

" explorer
nmap <leader>k :CocCommand explorer<cr>

" format
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" multi-cursors
nmap <silent> <C-b> <Plug>(coc-cursors-word)
xmap <silent> <C-b> <Plug>(coc-cursors-range)

" fzf
nmap <Leader>o [fzf-p]
xmap <Leader>o [fzf-p]

nnoremap <silent> [fzf-p]gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> [fzf-p]ga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> [fzf-p]c    :<C-u>CocCommand fzf-preview.Changes<CR>
nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
nnoremap <silent> [fzf-p]t     :<C-u>CocCommand fzf-preview.BufferTags<CR>
nnoremap <silent> [fzf-p]q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> [fzf-p]y     :<C-u>CocCommand fzf-preview.Yankround<CR>
nnoremap <silent> [fzf-p]d     :<C-u>CocCommand fzf-preview.CocCurrentDiagnostics<CR>
nnoremap <silent> [fzf-p]o     :<C-u>:CocCommand fzf-preview.ProjectFiles<CR>

let g:fzf_preview_floating_window_rate = 0.85
let g:fzf_preview_use_dev_icons = 1

" calc
nmap <Leader>cca <Plug>(coc-calc-result-append)
nmap <Leader>ccr <Plug>(coc-calc-result-replace)
