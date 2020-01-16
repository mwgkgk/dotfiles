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


" Auto-connect to StumpWM:
if bufname() =~# 'stumpwm/config$'
    if ! exists('b:vlime_auto_connection')
        let b:vlime_auto_connection = vlime#plugin#ConnectREPL('127.0.0.1',
                    \ 44820, '', '', 'StumpWM connection')
    endif
endif
