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
    \ 'coc-lists',
    \ 'coc-vimlsp',
    \ 'coc-go',
    \ 'coc-jedi',
    \ 'coc-sh',
    \ 'coc-sql',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-markdownlint',
    \ 'coc-json',
    \ 'coc-yaml',
    \ 'coc-emmet',
    \ 'coc-highlight',
    \ 'coc-pairs',
    \ 'coc-docker',
    \ 'coc-ultisnips',
    \ 'coc-calc',
  \ ]

" format
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" multi-cursors
nmap <silent> <C-b> <Plug>(coc-cursors-word)
xmap <silent> <C-b> <Plug>(coc-cursors-range)

" calc
nmap <Leader>cca <Plug>(coc-calc-result-append)
nmap <Leader>ccr <Plug>(coc-calc-result-replace)
