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
function! OpenAnimatedTerm() abort
    new term://bash
    resize 1
    call animate#window_percent_height(0.3)
endfunction
nnoremap tts :call OpenAnimatedTerm()<CR>i

function! OpenAnimatedVTerm() abort
    vnew term://bash
    vertical resize 1
    call animate#window_delta_width(80)
endfunction
nnoremap ttv :call OpenAnimatedVTerm()<CR>i

" htop
function! OpenAnimatedHtop() abort
  new term://htop
  wincmd J | resize 1
  call animate#window_percent_height(0.5)
endfunction
nnoremap top :call OpenAnimatedHtop()<CR>i

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
