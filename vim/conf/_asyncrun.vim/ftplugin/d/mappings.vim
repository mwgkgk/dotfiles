" ||
" || Compiler control
" ||

" Mon Aug  2 10:13:58 UTC 2021

" Default flags recommended:
" -de           show use of deprecated features as errors (halt compilation)
" -w            warnings as errors (compilation will halt)
" -unittest     compile in unit tests
nnoremap <silent> <buffer> <Leader>wr :AsyncRun tmux send -t will C-u "rdmd -de -w -unittest <C-r>=expand('%:p')<CR>" C-m<CR>
