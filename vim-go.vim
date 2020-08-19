" === Go ===

autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>gt  <Plug>(go-test)
autocmd FileType go nmap <leader>cc <Plug>(go-coverage-toggle)
autocmd FileType go nmap <leader>s <Plug>(go-describe)

" check code
autocmd FileType go map <leader>v :w<CR>:GoVet<enter>
autocmd FileType go map <leader>l :w<CR>:GoLint<enter>

" docs
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gb <Plug>(go-doc-browser)

au FileType go nmap <leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)

let g:go_def_reuse_buffer = 0

" test file
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" go module
au FileType go nmap <leader>gmt :!go mod tidy<CR>

" highlighting
set updatetime=100
let g:go_auto_type_info = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1

let g:go_imports_autosave = 1
let g:go_mod_fmt_autosave = 1

let $GOPATH = $GOPATH
let g:go_term_enabled = 1
let g:go_list_type = "quickfix"
let g:go_test_timeout = '10s'
let g:go_fmt_fail_silently = 1
let g:go_textobj_include_function_doc = 1

let g:go_term_close_on_exit = 0

let g:go_addtags_transform = "snakecase"
let g:go_fmt_command = "goimports"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_rename_command = 'gopls'
let g:go_implements_mode = 'guru'
let g:go_doc_url = 'https://pkg.go.dev'
