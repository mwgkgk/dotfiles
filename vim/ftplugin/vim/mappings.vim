"
"
" Help
"

" Help on word under cursor:
nnoremap <C-g> :help <C-r><C-w><CR>

"
"
" Eval
"

nnoremap <buffer> X ^vg_y:execute @@<cr>
vnoremap <buffer> X y:execute @@<cr>

nnoremap <buffer> <Leader>X ^vg_yA<C-r>=execute(@@)<CR><Esc>I"<Space><Esc>
vnoremap <buffer> <Leader>X y`>A<C-r>=execute(@@)<CR><Esc>I"<Space><Esc>

nnoremap <buffer> <Space>x :silent! :w <bar> :source %<CR>:echo 'Sourced file.'<CR>

inoremap <buffer> <C-g>x <Esc>^vg_y:execute @@<cr>gi
inoremap <buffer> <C-g><C-x> <Esc>^vg_y:execute @@<cr>gi
