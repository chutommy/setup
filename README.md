# .vimrc
These are my VIM files. Use at your own risk.

### Requirements
    - vim-plug (<a href="https://github.com/junegunn/vim-plug" target="_blank">github</a>)
    - deoplete (<a href="https://www.python.org/" target="_blank">python.org</a>)
    - vim-go (<a href="https://www.golang.org/">golang.org</a>)

### Installation
#### Unix (Linux & Mac)
Run this git command and you should be fine :-)
```bash
$ git clone https://github.com/chutified/myvim.git \
    && mv -f myvim ~/.vim/myvim/ \
    && echo "runtime myvim/sources.vim" > ~/.vimrc \
    && vim +PlugInstall +qa \
    && vim *GoInstallBinaries
```

#### Windows
Install the Git-bash emulator (<a href="https://git-scm.com/" taget="_blank">Git</a>).
```bash
$ git clone https://github.com/chutified/myvim.git \
    && mv -f myvim ~/.vim/myvim/ \
    && echo "runtime myvim/sources.vim" > ~/.vimrc \
    && vim +PlugInstall +qa \
    && vim *GoInstallBinaries
```
Without the Python3 support inside the Git-bash, I recommend to comment out these plugins:
    - Deoplete
    - Ultisnips
    - FZF
