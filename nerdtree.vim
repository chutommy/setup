" === NERDTree ===

map <leader>k :NERDTreeToggle<enter>
set grepprg=ag\ --nogroup\ --nocolor

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('go', 'cyan', 'none', 'green', '#151515')
call NERDTreeHighlightFile('sh', 'cyan', 'none', 'green', '#151515')
call NERDTreeHighlightFile('lush', 'cyan', 'none', 'green', '#151515')
call NERDTreeHighlightFile('sql', 'cyan', 'none', 'green', '#151515')
call NERDTreeHighlightFile('Makefile', 'cyan', 'none', 'green', '#151515')
call NERDTreeHighlightFile('Dockerfile', 'cyan', 'none', 'green', '#151515')
call NERDTreeHighlightFile('.build', 'cyan', 'none', 'green', '#151515')

call NERDTreeHighlightFile('txt', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('mod', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('sum', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')

call NERDTreeHighlightFile('js', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('html', 'green', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('scss', 'green', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'green', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('svg', 'green', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('png', 'green', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('jpg', 'green', 'none', 'cyan', '#151515')
