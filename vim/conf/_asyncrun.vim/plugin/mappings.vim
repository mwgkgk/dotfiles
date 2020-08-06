" ||
" || Milk
" ||

" Change dir
nnoremap <Leader>wc :AsyncRun tmux send -t milk C-u "cd <C-r>=getcwd()<CR>" C-m<CR>

" Do thing
nnoremap <Leader>wt :AsyncRun tmux send -t milk C-u do-thing C-m<CR>

" Do prev
nnoremap <Leader>ww :AsyncRun tmux send -t milk C-u C-p C-m<CR>

" C-c
nnoremap <Leader>w<C-c> :AsyncRun tmux send -t milk C-c && sleep 0.1 && tmux send -t milk C-c <CR>

" ||
" || Apps
" ||

nnoremap [gl :AsyncRun xpdf -remote xpdfserv 'gotoPage(<C-R><C-W>)'<CR>
