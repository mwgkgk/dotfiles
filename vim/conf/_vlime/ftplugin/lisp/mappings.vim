" Eval form under cursor:
nnoremap <silent> <buffer> X :call vlime#plugin#SendToREPL(vlime#ui#CurExprOrAtom())<cr>

" Eval top-level form:
nnoremap <silent> <buffer> <Leader>x :call vlime#plugin#SendToREPL(vlime#ui#CurTopExpr())<cr>

" Eval atom under cursor:
nnoremap <silent> <buffer> <LocalLeader>x :call vlime#plugin#SendToREPL(vlime#ui#CurAtom())<cr>

" Display documentation on atom under cursor:
nnoremap <silent> <buffer> <C-g> :call vlime#plugin#DocumentationSymbol(vlime#ui#CurAtom())<cr>

" nnoremap <silent> <buffer> <LocalLeader>gi :call vlime#plugin#InteractionMode()<CR>

" TODO <LocalLeader><LocalLeader> for <LocalLeader>st

if bufname() =~# 'stumpwm/config$'
    call vlime#plugin#ConnectREPL('127.0.0.1', 44820, '', '', 'StumpWM connection')
endif
