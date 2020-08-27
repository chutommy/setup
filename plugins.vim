" === Plugins ===

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'antoinemadec/coc-fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
Plug 'ryanoasis/vim-devicons'
Plug 'LeafCage/yankround.vim'
Plug 'junegunn/vim-emoji'
" Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'

call plug#end()
