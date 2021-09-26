" Sun Sep 26 06:19:21 UTC 2021

" cancel all <C-c> binds:
" unmap <buffer> <C-c>

" Set up <C-c> as wide-bracket-surround-motion
" Haha: unforch. This has to use <expr> / a function wrapper
" nmap <buffer> <C-c> <Esc>ys.......
