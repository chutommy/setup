" === Colors ===

" coloring
" let g:rehash256=1
" let g:gruvbox_italic=1
" let g:gruvbox_contrast_dark="hard"
" let g:gruvbox_contrast_light="hard"
" let g:gruvbox_invert_indent_guides=1
" let g:gruvbox_italicize_comments=0

" colorscheme
" colorscheme gruvbox
" set termguicolors

set termguicolors
let g:ayucolor="mirage"
colorscheme ayu

let currentHour = strftime('%H')
if (currentHour > 7) && (currentHour < 18)
    let g:ayucolor="light"
    let g:airline_theme="ayu_light"
    set background=light
    colorscheme ayu
else
    let g:ayucolor="mirage"
    let g:airline_theme="ayu_mirage"
    set background=dark
    colorscheme ayu
endif

function BgAyu(mode)
    if (a:mode == "light")
        let g:ayucolor="light"
        let g:airline_theme="ayu_light"
        set background=light
        colorscheme ayu
    elseif (a:mode == "mirage")
        let g:ayucolor="mirage"
        let g:airline_theme="ayu_mirage"
        set background=dark
        colorscheme ayu
    elseif (a:mode == "dark")
        let g:ayucolor="dark"
        let g:airline_theme="ayu_dark"
        set background=dark
        colorscheme ayu
    endif
endfunction
