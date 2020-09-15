" === COC ===

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" option selection
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
  \ ]

" format
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" multi-cursors
nmap <expr> <silent> <C-b> <SID>select_current_word()
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc
