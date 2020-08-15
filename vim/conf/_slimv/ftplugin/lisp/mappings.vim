"
"
" Connection
"

nnoremap <buffer> <LocalLeader>cc :call SlimvConnectServer()<CR>
nnoremap <buffer> <LocalLeader>rr :call SlimvConnectServer()<CR>

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
" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <buffer> <Space>x :call SlimvEvalBuffer()<CR>

"
"
" Docs
"

" Display documentation on atom under cursor:
nnoremap <buffer> <C-g> :call SlimvDescribeSymbol()<CR>

" Open hyperspec for atom under cursor:
nnoremap <buffer> g<C-g> :call SlimvHyperspec()<CR>

"
"
" Insert mode
"

" Utilize Slimv completion (is regular omni when not connected):
inoremap <silent> <buffer> <C-h> <C-R>=SlimvHandleTab()<CR>

"
"
" Indent
"

" Is slow, but works. Kinda seems like it belongs outside of slimv conf, but
" we're relying specifically on swank when it's on, so this seems fair enough.
nnoremap <buffer> <Space>f gg=G
