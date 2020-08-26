# NeoVim

These are my Neovim files. Feel free to download and modify them.

## Installation

### Requirements

- [Neovim](https://neovim.io)
- [Go](https://golang.org)
- [Python3](https://www.python.org)
- [Node](https://nodejs.org/en)
- [Git](https://git-scm.com)
- [Vim-plug](https://github.com/junegunn/vim-plug)
- [Fzf](https://github.com/junegunn/fzf)
- [ctags](http://ctags.sourceforge.net)

### Install

#### Linux/Mac

```bash
git clone https://github.com/chutified/myvim.git \
    && mv -f myvim/* $HOME/.config/nvim/ \
    && rm -rf myvim \
    && nvim +PlugInstall +qa \
    && nvim +GoInstallBinaries +qa \
    && nvim
````
