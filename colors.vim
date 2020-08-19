" === Colors ===

" coloring
let g:rehash256=1
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"
let g:gruvbox_invert_indent_guides=1
"let g:gruvbox_invert_signs=1
let g:gruvbox_italicize_comments=0

" colorscheme
colorscheme gruvbox
set termguicolors

" switching light and dark backgroung
" depend on the time
let currentHour = strftime('%H')
if (currentHour > 7) && (currentHour < 18)
    set background=light
else
    set background=dark
endif
" manual
function! BgToggleSol()
    if (&background == "light")
        set background=dark 
    else
        set background=light 
    endif
endfunction
nnoremap <silent> <leader>sz :call BgToggleSol()<cr>
