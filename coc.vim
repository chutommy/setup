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
    \ 'coc-git'
  \ ]

" mapping

" explorer
nmap <leader>k :CocCommand explorer<cr>

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

" git
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap <leader>ggp <Plug>(coc-git-chunkinfo)
nmap <leader>ggu <Plug>(coc-git-chunkundo)
nmap <leader>ggs <Plug>(coc-git-chunkstage)