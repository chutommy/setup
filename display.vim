" === Vim display settings ===

set t_Co=256
" show invisible chars
set listchars=tab:\.\ ,trail:·,eol:¬,nbsp:_

" show numers
set list
set number
set relativenumber

" highlight cursor's row and column
set cursorline
set cursorcolumn

" commands config
set showcmd
set showmatch
set noshowmode

" searching hilighting
set incsearch
set hlsearch

" movinga while editting
set wrap
set scrolloff=4
set sidescrolloff=4

" highlight yanked text
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
augroup END
