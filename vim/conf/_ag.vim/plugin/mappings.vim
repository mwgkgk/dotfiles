" Find in cwd
nnoremap <Leader>gE :Ag<Space>""<Space>"<C-R>=getcwd()<CR>/"<C-left><Left><Left>
" Find in file dir
nnoremap <Leader>ge :Ag<Space>""<Space>"<C-R>=expand('%:p:h')<CR>/"<C-left><Left><Left>

" Find word under cursor in cwd
nnoremap <Leader>g<C-e> :Ag "<C-R><C-A>" "<C-R>=getcwd()<CR>/"<CR>
" Find search register in cwd
nnoremap <Leader>g<C-x> :Ag "<C-R>/" "<C-R>=getcwd()<CR>/"<CR>
