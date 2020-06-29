" Run tests on current file.
nnoremap <buffer> <Leader>wr :AsyncRun tmux send -t milk C-u "zt <C-r>=expand('%')<CR>" C-m<CR>
