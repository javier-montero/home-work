autocmd FileType bash setlocal commentstring=#%s
autocmd FileType sh setlocal commentstring=#%s

autocmd! BufRead,BufNewFile *.test setfile tcl
autocmd! BufRead,BufNewFile *.tcl setfile tcl
autocmd FileType tcl setlocal commentstring=#%s

autocmd! BufRead,BufNewFile *.py setfile python
autocmd! BufRead,BufNewFile *.pyc setfile python
autocmd FileType python setlocal commentstring=#%s

autocmd! BufRead,BufNewFile *.html setfile html
autocmd FileType html setlocal commentstring=<!--%s-->

autocmd! BufRead,BufNewFile *.vim setfile vim
autocmd FileType vim setlocal commentstring=\"%s

autocmd! BufRead,BufNewFile *.erb setfile erb
autocmd FileType erb setlocal commentstring=#%s
