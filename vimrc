" === Plugins ===

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'machakann/vim-highlightedyank'

call plug#end()

" === General ===

syntax on
filetype plugin indent on

" disable backup
set noswapfile
set noerrorbells
set backup

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
set virtualedit=block

" search options
set ignorecase
set smartcase

set wildmenu
set lazyredraw

set history=666
set formatoptions+=j

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
noremap <C-j> 8j
noremap <C-k> 8k

" === Display ===

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

" === Colors ===

" coloring
set termguicolors
set background=dark

" gruvbox
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_undercurl = 1
let g:gruvbox_termcolors = 256
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_hls_cursor = 'orange'
let g:gruvbox_italicize_comments = 1
let g:gruvbox_italicize_strings = 0
let g:gruvbox_invert_selection = 1
let g:gruvbox_invert_signs = 1
let g:gruvbox_invert_indent_guides = 0
let g:gruvbox_invert_tabline = 0
colorscheme gruvbox
