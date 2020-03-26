" Function names:
" ~/.vim/plugs/vlime/vim/autoload/vlime/ui/mapping.vim 

" Eval form under cursor:
nnoremap <silent> <buffer> X :call vlime#plugin#SendToREPL(vlime#ui#CurExprOrAtom())<cr>

" Eval top-level form:
nnoremap <silent> <buffer> <Leader>x :call vlime#plugin#SendToREPL(vlime#ui#CurTopExpr())<cr>

" Eval atom under cursor:
nnoremap <silent> <buffer> <LocalLeader>x :call vlime#plugin#SendToREPL(vlime#ui#CurAtom())<cr>

" Display documentation on atom under cursor:
nnoremap <silent> <buffer> <C-g> :call vlime#plugin#DocumentationSymbol(vlime#ui#CurAtom())<cr>

" Hide all vlime windows:
nnoremap <silent> <buffer> <LocalLeader>` :call vlime#plugin#CloseWindow("")<cr>
