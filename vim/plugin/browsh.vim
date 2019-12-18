nnoremap <F3> :terminal ++close env TERM=screen-256color browsh<CR><C-w>:call browsh#normal_mode()<CR>
nnoremap <Leader><F3> :terminal ++curwin ++close env TERM=screen-256color browsh<CR><C-w>:call browsh#normal_mode()<CR>
nnoremap <Space><F3> :vert terminal ++close env TERM=screen-256color browsh<CR><C-w>:call browsh#normal_mode()<CR>
