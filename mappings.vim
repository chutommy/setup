" === Keymaps ===

let mapleader=","

" tab
nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>

" errs
nnoremap <C-n> :cnext<CR>
nnoremap <C-m> :cprevious<CR>

" terminal
nnoremap tts :new term://bash<CR>i
nnoremap ttv :vnew term://bash<CR>i
nnoremap top :split term://htop<CR>
nnoremap vtop :vsplit term://htop<CR>

" highlight
nnoremap * *``
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
noremap <S-l> 5l
noremap <S-h> 5h

" switch background
nnoremap <leader>sb :call BGSwitch()<CR>
