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
nnoremap tt :terminal<CR>

" highlight
nnoremap * *``
nnoremap <C-s> :call ClearSearch()<CR>:nohl<CR>
function! ClearSearch()
    let @/=""
endfunction

" shifting
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" fast moving
noremap <S-l> 5l
noremap <S-h> 5h
