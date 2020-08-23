" === Git Gutter ===

let g:gitgutter_max_signs = -1

" mappings
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

set signcolumn=yes
set updatetime=100

highlight link GitGutterChangeLine DiffText
highlight link GitGutterChangeLineNr Underlined

" symbols
let g:gitgutter_sign_added = '⮝'
let g:gitgutter_sign_modified = '⮞'
let g:gitgutter_sign_removed = '⮟'
let g:gitgutter_sign_removed_first_line = '⮟'
let g:gitgutter_sign_modified_removed = '⮞'
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
