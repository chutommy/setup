" === Colors ===

" coloring
set termguicolors
set background=dark

" gruvbox
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_undercurl = 1
let g:gruvbox_termcolors = 256
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_hls_cursor = 'orange'
let g:gruvbox_italicize_comments = 1
let g:gruvbox_italicize_strings = 0
let g:gruvbox_invert_selection = 1
let g:gruvbox_invert_signs = 1
let g:gruvbox_invert_indent_guides = 0
let g:gruvbox_invert_tabline = 0

" set colorscheme
autocmd vimenter * ++nested colorscheme gruvbox
