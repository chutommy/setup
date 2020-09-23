" === Plugins ===

call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'preservim/nerdcommenter'
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'LeafCage/yankround.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mattn/emmet-vim'
Plug 'justinmk/vim-sneak'

Plug 'fatih/vim-go'
Plug 'sebdah/vim-delve'

call plug#end()
