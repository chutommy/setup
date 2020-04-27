" === Terminal ===

let s:force_vertical = exists('g:split_term_vertical') ? 1 : 0
let s:map_keys = exists('g:disable_key_mappings') ? 0 : 1
let s:default_shell = exists('g:split_term_default_shell') ? g:split_term_default_shell : 0

au BufEnter * if &buftype == 'terminal' | :startinsert | endif

fun! s:openBuffer(count, vertical)
  let cmd = a:vertical ? 'vnew' : 'new'
  let cmd = a:count ? a:count . cmd : cmd
  exe cmd
endf

fun! s:openSplitTerm(args, count, vertical)
  let direction = s:force_vertical ? 1 : a:vertical
  call s:openBuffer(a:count, direction)
  call s:openTerm(a:args)
endf

fun! s:openTabTerm(args)
  exe 'tabnew'
  call s:openTerm(a:args)
endf

fun! s:openTerm(args)
  let prevShell = &shell
  if exists('g:split_term_default_shell')
    exe 'set shell =' . s:default_shell
  endif
  exe 'terminal' a:args
  exe 'startinsert'
  if exists('g:split_term_default_shell')
    exe 'set shell =' . prevShell
  endif
endf

command! -count -nargs=* Term call  s:openSplitTerm(<q-args>, <count>, 0)
command! -count -nargs=* Vterm call s:openSplitTerm(<q-args>, <count>, 1)
command! -nargs=* TTerm call s:openTabTerm(<q-args>)
