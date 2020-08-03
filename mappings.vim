" === Keymaps ===

let mapleader=","

nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>

nnoremap <C-n> :cnext<CR>
nnoremap <C-m> :cprevious<CR>

nnoremap tt :terminal<CR>
nnoremap * *``

nnoremap <C-s> :call ClearSearch()<CR>:nohl<CR>
function! ClearSearch()
    let @/=""
endfunction

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

noremap <S-l> 5l
noremap <S-h> 5h
