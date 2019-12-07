nnoremap <F2> :terminal ++close env TERM=screen-256color vifm <C-r>=expand('%:p:h')<CR><CR>
nnoremap <Leader><F2> :terminal ++curwin ++close env TERM=screen-256color vifm <C-r>=expand('%:p:h')<CR><CR>
nnoremap <Space><F2> :vert terminal ++close env TERM=screen-256color vifm <C-r>=expand('%:p:h')<CR><CR>
