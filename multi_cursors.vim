", === Multiple Cursors ===

let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_support_imap = 1
let g:multi_cursor_exit_from_visual_mode = 1
let g:multi_cursor_exit_from_insert_mode = 1

let g:multi_cursor_start_word_key      = '<C-b>'
let g:multi_cursor_select_all_word_key = '<S-b>'
let g:multi_cursor_next_key            = '<C-b>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

func! Multiple_cursors_before()
  if deoplete#is_enabled()
    call deoplete#disable()
    let g:deoplete_is_enable_before_multi_cursors = 1
  else
    let g:deoplete_is_enable_before_multi_cursors = 0
  endif
endfunc
func! Multiple_cursors_after()
  if g:deoplete_is_enable_before_multi_cursors
    call deoplete#enable()
  endif
endfunc
