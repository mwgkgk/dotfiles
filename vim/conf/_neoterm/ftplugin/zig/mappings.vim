" Run tests on current file.
nnoremap <buffer> <LocalLeader><LocalLeader> :silent T zig test <C-r>=expand('%')<CR><CR>

" Run file:
nnoremap <buffer> <Leader>r :silent T zig run <C-r>=expand('%')<CR> -lc<CR>
nnoremap <buffer> <LocalLeader>r :silent T zig run <C-r>=expand('%')<CR><CR>

" Zig build:
nnoremap <buffer> <Leader>f :silent T zig build<CR>
nnoremap <buffer> <LocalLeader>b :silent T zig build<CR>

" Version:
nnoremap <buffer> <LocalLeader>v :silent T zig version<CR>

" Don't send specific lines for now.
nnoremap <buffer> X <Nop>
nnoremap <buffer> <Leader>x <Nop>
nnoremap <buffer> <Leader>X <Nop>
