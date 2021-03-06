let g:fireplace_no_maps = 1

nmap <silent> <buffer> <C-g> <Plug>FireplaceK

" Use vim-sexp mappings to keep cursor position (see :help sexp-mappings)
nmap <silent> <buffer> X <Plug>FireplacePrint<Plug>(sexp_outer_list)``
nmap <silent> <buffer> <Leader>x <Plug>FireplacePrint<Plug>(sexp_outer_top_list)``
nmap <silent> <buffer> <LocalLeader>x <Plug>FireplacePrint<Plug>(sexp_inner_element)``

nnoremap <silent> <buffer> <LocalLeader>i :Eval (st/instrument)<CR>

" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <silent> <buffer> <Space>x :Require<CR>

" TODO tidy up into a function, restore search reg
map <silent> <buffer> <Leader>X ya(:-1put<CR><C-o><Plug>FireplaceCountFilter:Commentary<CR>:s/^; /; => /<CR>:let @/=''<CR>
" )

" TODO tidy up into a function
nnoremap <buffer> <LocalLeader>cc :Connect localhost:<C-r>=readfile(".nrepl-port")<CR><BS><Space><C-r>=expand('%:p:h')<CR><CR>

map <buffer> <C-]> <Plug>FireplaceDjump
map <buffer> <C-w><C-]> <Plug>FireplaceDsplit
