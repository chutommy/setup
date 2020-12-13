" === Keymaps ===

let mapleader=","

" tab
nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>

" errs
nnoremap <C-n> :cnext<CR>
nnoremap <C-m> :cprevious<CR>

" terminal
nnoremap tts :new term://bash<CR>i
nnoremap ttv :vnew term://bash<CR>i
nnoremap top :split term://htop<CR>
nnoremap vtop :vsplit term://htop<CR>

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" highlight
nnoremap <C-s> :call ClearSearch()<CR>:nohl<CR>
function! ClearSearch()
    let @/=""
endfunction

" shifting
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" fast moving
noremap <S-l> 4l
noremap <S-h> 4h

" disable sql omni-completion
let g:omni_sql_no_default_maps = 1

" vim hardtime
let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:hardtime_timeout = 5000
let g:hardtime_showmsg = 1
let g:hardtime_ignore_quickfix = 1
let g:hardtime_allow_different_key = 1
let g:hardtime_maxcount = 6
