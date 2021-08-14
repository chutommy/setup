" === Animate ===

nnoremap <silent> <Up>    :call animate#window_delta_height(6)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-6)<CR>
nnoremap <silent> <Right>  :call animate#window_delta_width(6)<CR>
nnoremap <silent> <Left> :call animate#window_delta_width(-6)<CR>

let g:animate#distribute_space = 0
let g:animate#duration = 200.0
let g:animate#easing_func = 'animate#ease_linear'
