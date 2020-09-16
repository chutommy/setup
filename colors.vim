" === Colors ===

" coloring
set termguicolors
let g:ayucolor="mirage"
colorscheme ayu

" switch background function
function BGSwitch()
    if (g:ayucolor == "dark")
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
endfunction
