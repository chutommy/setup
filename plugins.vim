" === Plugins ===

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'fatih/molokai'
Plug 'fatih/vim-go'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'diepm/vim-rest-console'
Plug 'preservim/nerdcommenter'
Plug 'tmhedberg/matchit'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'Shougo/echodoc.vim'
call plug#end()
