" === Plugins ===

call plug#begin('~/.vim/plugged')

" == Code display ==
Plug 'morhetz/gruvbox'
Plug 'machakann/vim-highlightedyank'
Plug 'Shougo/echodoc.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" == Completion ==
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

" == Code edit ==
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'

" == Interface ==
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" == Dirs and files ==
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tmhedberg/matchit'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" == Filetype specific ==
" Go
Plug 'fatih/vim-go'
" HTML & CSS
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
" Javacript
Plug 'pangloss/vim-javascript'
" YAML
Plug 'stephpy/vim-yaml'
" Dockerfile
Plug 'ekalinin/Dockerfile.vim'
" PostgreSQL
Plug 'lifepillar/pgsql.vim'

call plug#end()
