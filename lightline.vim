" === Lightline ===

" itchyny/lightline.vim: Hide the encoding field
function! LightlineFileEncoding()
  if (&filetype !=? 'nerdtree') || (&filetype !=? 'tagbar')
    return &fileencoding
  else
    return ''
  endif
endfunction

" itchyny/lightline.vim: Hide the fileformat field
function! LightlineFileFormat()
  if &filetype !=? 'nerdtree'
    return &fileformat
  else
    return ''
  endif
endfunction

" itchyny/lightline.vim: Hide the filename field
function! LightlineFileName()
  let filename = expand('%')

  if &filetype !=? 'nerdtree'

    if filename ==# ''
      return '[No Name]'
    endif

    let parts = split(filename, ':')

    " Show the shell with full path as filename
    if parts[0] ==# 'term'
      return parts[-1]
    endif

    return filename
  else
    return ''
  endif
endfunction

" itchyny/lightline.vim: Hide the filetype field
function! LightlineFileType()
  if &filetype !=? 'nerdtree'
    return &filetype
  else
    return ''
  endif
endfunction

" itchyny/lightline.vim: Hide the lineinfo field
function! LightlineLineInfo()
  if &filetype !=? 'nerdtree'
    return line('.').':'. col('.')
  else
    return ''
  endif
endfunction

" itchyny/lightline.vim: Show plugin name instead of normal as the mode
function! LightlineMode()
  return &filetype ==# '__Tagbar__' ? 'Tagbar' :
       \ &filetype ==# 'nerdtree' ?  'NERDTree' :
       \ &filetype ==# 'vimshell' ? 'VimShell' :
       \ lightline#mode()
endfunction

" itchyny/lightline.vim: Hide the modified field
function! LightlineModified()
  if &filetype !=? 'nerdtree' && &modified == 1
    return '+'
  else
    return ''
  endif
endfunction

" itchyny/lightline.vim: Hide the percent field
function! LightlinePercent()
  if &filetype !=? 'nerdtree'
    return line('.') * 100 / line('$') . '%'
  else
    return ''
  endif
endfunction

" itchyny/lightline.vim
let g:lightline = {
    \ 'active': {
    \   'left': [
    \     ['mode', 'paste'],
    \     ['gitbranch', 'readonly', 'filename', 'modified']
    \   ],
    \   'right': [
    \     ['lineinfo'],
    \     ['percent'],
    \     ['fileformat', 'fileencoding', 'filetype', 'scrollbar']
    \   ]
    \ },
    \ 'inactive': {
    \   'left': [
    \       ['filename'],
    \       ['modified']
    \   ],
    \   'right' : [
    \       ['lineinfo'],
    \       ['percent']
    \   ]
    \  },
    \ 'tabline': {
    \   'left': [ [ 'tabs' ] ],
    \   'right': [ ]
    \  },
    \ 'tab': {
    \ 'active': [ 'tabnum', 'filename', 'modified' ],
    \ 'inactive': [ 'tabnum', 'filename', 'modified' ]
    \ },
    \ 'component_function': {
    \   'fileencoding': 'LightlineFileEncoding',
    \   'fileformat':   'LightlineFileFormat',
    \   'filename':     'LightlineFileName',
    \   'filetype':     'LightlineFileType',
    \   'gitbranch':    'fugitive#head',
    \   'lineinfo':     'LightlineLineInfo',
    \   'mode':         'LightlineMode',
    \   'modified':     'LightlineModified',
    \   'percent':      'LightlinePercent',
    \   'scrollbar':    'LightlineScrollbar',
    \ },
    \ 'enable' : {
    \   'statusline': 1,
    \   'tabline': 1
    \ },
    \ 'colorscheme': 'powerline',
    \ 'separator': { 'left': '|', 'right': '|' },
    \ 'subseparator': { 'left': '|', 'right': '|' }
    \ }
" }}}

" Disable the built-in mode indicator since this functionality is provided by lightline
set noshowmode
