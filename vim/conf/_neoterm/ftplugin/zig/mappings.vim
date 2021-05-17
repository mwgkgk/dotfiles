" Use <LocalLeader>r to run tests on current file.
nnoremap <buffer> <LocalLeader>r :silent T zt <C-r>=expand('%')<CR><CR>

" Run file:
nnoremap <buffer> <Leader>r :silent T zr <C-r>=expand('%')<CR><CR>

" Zig build:
nnoremap <buffer> <LocalLeader>b :silent T zig build<CR>

" Don't send specific lines for now.
nnoremap <buffer> X <Nop>
nnoremap <buffer> <Leader>x <Nop>
nnoremap <buffer> <Leader>X <Nop>
