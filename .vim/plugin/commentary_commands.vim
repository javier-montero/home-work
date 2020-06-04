autocmd FileType bash setlocal commentstring=#%s
autocmd FileType sh setlocal commentstring=#%s
autocmd! BufRead,BufNewFile *.test setfile tcl
autocmd! BufRead,BufNewFile *.tcl setfile tcl
autocmd FileType tcl setlocal commentstring=#%s
autocmd! BufRead,BufNewFile *.py setfile python
autocmd! BufRead,BufNewFile *.pyc setfile python
autocmd FileType python setlocal commentstring=#%s
