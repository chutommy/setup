" === Plugins ===

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'preservim/nerdcommenter'
Plug 'machakann/vim-highlightedyank'
Plug 'psliwka/vim-smoothie'

Plug 'fatih/vim-go'

call plug#end()
