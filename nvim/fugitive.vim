" === Fugitive ===

function! OpenAnimatedGitStatus() abort
    Git
    resize 1
    call animate#window_percent_height(0.4)
endfunction
nnoremap <leader>gs :call OpenAnimatedGitStatus()<CR>

function! OpenAnimatedGitCommit() abort
    Git commit -v
    resize 1
    call animate#window_percent_height(0.4)
endfunction
nnoremap <leader>gca :call OpenAnimatedGitCommit()<CR>

nnoremap <leader>gaa :Git add -A .<CR>
nnoremap <leader>gff :Gdiffsplit<CR>
nnoremap <leader>gpp :Git push<CR>
nnoremap <leader>gpl :Git pull<CR>
