" Run tests on current file.
nnoremap <buffer> <Leader>wr :AsyncRun tmux send -t will C-u "go run <C-r>=expand('%')<CR>" C-m<CR>

" Run tests on current file.
nnoremap <buffer> <Leader>wt :AsyncRun tmux send -t will C-u "go test <C-r>=expand('%')<CR>" C-m<CR>
