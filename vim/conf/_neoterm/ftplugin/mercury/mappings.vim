" Use <Leader>r to typecheck current file.
" The filename is passed without path or extension.
nnoremap <buffer> <Leader>r :silent above T mmc -t <C-r>=expand('%:t:r')<CR><CR>
