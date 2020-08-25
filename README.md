# NeoVim

These are my Neovim files. Feel free to download and modify them.

## Installation

### Requirements

- [Git](https://git-scm.com)
- [Vim-plug](https://github.com/junegunn/vim-plug)
- [Node](https://nodejs.org/en)
- [Fzf](https://github.com/junegunn/fzf)
- [ctags](http://ctags.sourceforge.net)
- [Neovim](https://neovim.io)
- [Go](https://golang.org)
- [Python3](https://www.python.org)

### Install

#### Linux/Mac

```bash
git clone https://github.com/chutified/myvim.git \
    && mv -f myvim/* $HOME/.config/nvim/ \
    && nvim +PlugInstall +qa \
    && nvim +GoInstallBinaries +qa \
    && nvim
````
