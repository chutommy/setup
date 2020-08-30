" === Colors ===

" coloring
set termguicolors
let g:ayucolor="mirage"
colorscheme ayu

" auto settings
let currentHour = strftime('%H')
if (currentHour > 6) && (currentHour < 20)
    let g:ayucolor="mirage"
    let g:airline_theme="ayu_mirage"
    set background=dark
    colorscheme ayu
else
    let g:ayucolor="dark"
    let g:airline_theme="ayu_dark"
    set background=dark
    colorscheme ayu
endif

" switch function
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
