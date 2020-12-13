"=== NERDTree ===

function! OpenAnimatedNERDTree() abort
    if g:NERDTree.IsOpen()
        NERDTreeToggle
    else
        NERDTreeToggle
        vertical resize 1
        call animate#window_delta_width(33)
    endif
endfunction
nnoremap <leader>k :call OpenAnimatedNERDTree()<enter>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeNaturalSort = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 33
let g:NERDTreeMinimalUI = 1

let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeLimitedSyntax = 1
