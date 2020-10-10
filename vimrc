" === Plugins ===

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'machakann/vim-highlightedyank'
Plug 'justinmk/vim-sneak'
call plug#end()

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

" === Display===

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

" coloring
set termguicolors
set colort

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

" === Fzf ===

" set the window
nnoremap <leader>o :Files<cr>
nnoremap <leader>i :BLines<cr>
nnoremap <leader>h :History:<cr>
let g:fzf_layout = { 'down': '~33%' }
let g:fzf_preview_window = 'right:66%'
let g:fzf_buffers_jump = 0

" enable the pos of the opening window
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" === NERD Commenter===

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDToggleCheckAllLines = 1

"=== NERDTree ===

nnoremap <leader>k :NERDTreeToggle<enter>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeNaturalSort = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 33
let g:NERDTreeMinimalUI = 1

let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeLimitedSyntax = 1

" === Sneak ===

map f <Plug>Sneak_s
map F <Plug>Sneak_S

" === Sneak ===

map f <Plug>Sneak_s
map F <Plug>Sneak_S
