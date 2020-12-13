" === Fugitive ===

function! OpenAnimatedGitStatus() abort
    Gstatus
    resize 1
    call animate#window_percent_height(0.4)
endfunction
nnoremap <leader>gs :call OpenAnimatedGitStatus()<CR>

nnoremap <leader>gaa :Git add -A .<CR>
nnoremap <leader>gff :Gdiffsplit<CR>
nnoremap <leader>gca :Gcommit -v<CR>
nnoremap <leader>gpp :Gpush<CR>
nnoremap <leader>gpl :Gpull<CR>
