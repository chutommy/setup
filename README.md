# .vimrc
These are my VIM files. Use at your own risk.

### Requirements
    - vim-plug (<a href="https://github.com/junegunn/vim-plug" target="_blank">github</a>)
    - deoplete (<a href="https://www.python.org/" target="_blank">python.org</a>)
    - vim-go (<a href="https://www.golang.org/">golang.org</a>)

### Installation: Unix
```bash
$ git clone https://github.com/chutified/myvim.git \
    && mv -f myvim ~/.vim/myvim/ \
    && echo "runtime myvim/sources.vim" > ~/.vimrc \
    && vim +PlugInstall +qa
```
