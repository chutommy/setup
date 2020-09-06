    " === Plugins ===

call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'antoinemadec/coc-fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
Plug 'LeafCage/yankround.vim'
Plug 'cespare/vim-toml'
Plug 'mattn/emmet-vim'

call plug#end()
