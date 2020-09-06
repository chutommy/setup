" === Git Gutter ===

let g:gitgutter_max_signs = -1

" mappings
nmap ggs <Plug>(GitGutterStageHunk)
nmap ggu <Plug>(GitGutterUndoHunk)
nmap ggp <Plug>(GitGutterPreviewHunk)
nmap ]g <Plug>(GitGutterNextHunk)
nmap [g <Plug>(GitGutterPrevHunk)

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
