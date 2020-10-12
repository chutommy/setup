" === Git Gutter ===

let g:gitgutter_max_signs = -1

" mappings
nmap <leader>ggs <Plug>(GitGutterStageHunk)
nmap <leader>ggu <Plug>(GitGutterUndoHunk)
nmap <leader>ggp <Plug>(GitGutterPreviewHunk)
nmap ]g <Plug>(GitGutterNextHunk)
nmap [g <Plug>(GitGutterPrevHunk)

set signcolumn=yes
set updatetime=100

highlight link GitGutterChangeLine DiffText
highlight link GitGutterChangeLineNr Underlined
