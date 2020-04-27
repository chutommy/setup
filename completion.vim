" === Completion ===

setlocal omnifunc=gocomplete#Complete
set completeopt=longest,menuone
set completeopt+=noinsert
set completeopt+=noselect

let g:python3_host_prog  = '/usr/bin/python3'
let g:python3_host_skip_check = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#package_dot = 0
let g:deoplete#min_pattern_length = 1
let g:editorconfig_Beautifier = '~/.config/nvim/.editorconfig'

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
