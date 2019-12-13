"
"
" Connection
"

nnoremap <buffer> <LocalLeader>cc :call SlimvConnectServer()<CR>

"
"
" Eval
"

" Eval form under cursor:
" NOTE: Requires g:paredit_disable_lisp = 1.
" Simple g:paredit_mode = 0 is not enough: X will be empty.
" Defining X in after/ftplugin doesn't work either.
nnoremap <buffer> X :call SlimvEvalExp()<CR>

" Eval top-level form:
nnoremap <buffer> <Leader>x :call SlimvEvalDefun()<CR>

" Eval buffer:
nnoremap <buffer> <Space>x :call SlimvEvalBuffer()<CR>

"
"
" Docs
"

" Display documentation on atom under cursor:
nnoremap <buffer> <C-g> :call SlimvDescribeSymbol()<CR>

" Open hyperspec for atom under cursor:
nnoremap <buffer> g<C-g> :call SlimvHyperspec()<CR>
