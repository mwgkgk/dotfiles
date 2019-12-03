let g:fireplace_no_maps = 1

nmap <silent> <buffer> <C-g> <Plug>FireplaceK

" Use vim-sexp mappings to keep cursor position (see :help sexp-mappings)
nmap <silent> <buffer> X <Plug>FireplacePrint<Plug>(sexp_outer_list)``
nmap <silent> <buffer> <Leader>x <Plug>FireplacePrint<Plug>(sexp_outer_top_list)``
nmap <silent> <buffer> <LocalLeader>x <Plug>FireplacePrint<Plug>(sexp_inner_element)``

nnoremap <silent> <buffer> <LocalLeader>i :Eval (st/instrument)<CR>

nnoremap <silent> <buffer> <Space>x :Require<CR>

" TODO tidy up into a function, restore search reg
map <silent> <buffer> <Leader>X ya(:-1put<CR><C-o><Plug>FireplaceCountFilter:Commentary<CR>:s/^; /; => /<CR>:let @/=''<CR>
" )

" TODO tidy up into a function
nnoremap <LocalLeader>cc :Connect localhost:<C-r>=readfile(".nrepl-port")<CR><BS><Space><C-r>=expand('%:p:h')<CR><CR>

map <C-]> <Plug>FireplaceDjump
map <C-w><C-]> <Plug>FireplaceDsplit
