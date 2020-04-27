" === Plugins ===

call plug#begin('~/.vim/plugged')
Plug 'fatih/molokai'
Plug 'fatih/vim-go'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'machakann/vim-highlightedyank'
Plug 'maksimr/vim-jsbeautify'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
