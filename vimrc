" === General ===

syntax on
filetype plugin indent on

" disable backup
set noswapfile
set noerrorbells
set nobackup

" chars
set encoding=utf-8
set autowrite
set autoread

" backspace behavior
set backspace=indent,eol,start
set clipboard=unnamed

set splitright
set splitbelow
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set mouse-=a

" search options
set ignorecase
set smartcase

set wildmenu
set lazyredraw

set history=666
set formatoptions+=j

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
nnoremap tt :terminal

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

" === Display===

set t_Co=256
" show invisible chars
set listchars=tab:\.\ ,trail:·,eol:¬,nbsp:_

" show numers
set list
set number
set relativenumber

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

" === Colors ===

" coloring
set termguicolors
