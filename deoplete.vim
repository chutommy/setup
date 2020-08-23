" === Completion ===

let g:deoplete#enable_at_startup = 1

" sources
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

" set menu
setlocal omnifunc=gocomplete#Complete
set completeopt=longest,menuone
set completeopt+=noinsert
set completeopt+=noselect
set shortmess+=c

" deople config
let g:python3_host_skip_check = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#package_dot = 0
let g:deoplete#min_pattern_length = 1

" enable selecting by tab and enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

func! Multiple_cursors_before()
  if deoplete#is_enabled()
    call deoplete#disable()
    let g:deoplete_is_enable_before_multi_cursors = 1
  else
    let g:deoplete_is_enable_before_multi_cursors = 0
  endif
endfunc
func! Multiple_cursors_after()
  if g:deoplete_is_enable_before_multi_cursors
    call deoplete#enable()
  endif
endfunc
