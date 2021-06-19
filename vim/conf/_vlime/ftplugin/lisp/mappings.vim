" Function names:
" ~/.vim/plugs/vlime/vim/autoload/vlime/ui/mapping.vim 

" ||
" || Send
" ||

" Eval form under cursor:
nnoremap <silent> <buffer> X :call vlime#plugin#SendToREPL(vlime#ui#CurExprOrAtom())<cr>

" Eval top-level form:
nnoremap <silent> <buffer> <Leader>x :call vlime#plugin#SendToREPL(vlime#ui#CurTopExpr())<cr>

" Eval atom under cursor:
nnoremap <silent> <buffer> <Leader>X :call vlime#plugin#SendToREPL(vlime#ui#CurAtom())<cr>

" ||
" || Docs
" ||

" This spawns a separate window which may be unwieldy
nnoremap <silent> <buffer> <Leader><C-g> :call vlime#plugin#DocumentationSymbol(vlime#ui#CurAtom())<cr>

nnoremap <silent> <buffer> <C-g>a :call vlime#plugin#SendToREPL("(apropos \"" .. vlime#ui#CurAtom() .. "\")")<cr>
nnoremap <silent> <buffer> <C-g><C-a> :call vlime#plugin#SendToREPL("(apropos \"" .. vlime#ui#CurAtom() .. "\")")<cr>

nnoremap <silent> <buffer> <C-g><C-g> :call vlime#plugin#SendToREPL("(describe '" .. vlime#ui#CurAtom() .. ")")<cr>

nnoremap <silent> <buffer> <C-g>v :call vlime#plugin#SendToREPL("(documentation '" .. vlime#ui#CurAtom() .. " 'variable)")<cr>
nnoremap <silent> <buffer> <C-g>s :call vlime#plugin#SendToREPL("(documentation '" .. vlime#ui#CurAtom() .. " 'symbol)")<cr>
nnoremap <silent> <buffer> <C-g>f :call vlime#plugin#SendToREPL("(documentation '" .. vlime#ui#CurAtom() .. " 'function)")<cr>
nnoremap <silent> <buffer> <C-g>m :call vlime#plugin#SendToREPL("(documentation '" .. vlime#ui#CurAtom() .. " 'compiler-macro)")<cr>

" ECL-specific
nnoremap <silent> <buffer> <C-g>h :call vlime#plugin#SendToREPL("(help " .. vlime#ui#CurAtom() .. ")")<cr>
nnoremap <silent> <buffer> <C-g><C-h> :call vlime#plugin#SendToREPL("(help #'" .. vlime#ui#CurAtom() .. ")")<cr>

" ||
" || Close windows
" ||

" Hide all vlime windows:
nnoremap <silent> <buffer> <LocalLeader>` :call vlime#plugin#CloseWindow("")<cr>

" Close all visible preview windows:
" Not <buffer> because we can be in any buffer
" Moving to <buffer> because otherwise we can't cleanly clear the
" lisp-specific mappings on b:undo_ftplugin
nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :call vlime#plugin#CloseWindow("preview")<cr>
