" Use <Leader>r to run tests on current file.
nnoremap <buffer> <Leader>r :silent T zt <C-r>=expand('%')<CR><CR>

" Don't send specific lines for now.
nnoremap <buffer> X <Nop>
nnoremap <buffer> <Leader>x <Nop>
nnoremap <buffer> <Leader>X <Nop>
