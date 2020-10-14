" Open repl with file
nnoremap <buffer> <Leader>r :silent T swipl <C-r>=expand('%')<CR><CR>

nnoremap <buffer> <LocalLeader>r :silent T make.<CR>

" TODO nnoremap <buffer> <silent> X 0f<Space>v$:TREPLSendSelection<CR>
" Problem lies in it only being usable on comment lines.

" Unfortunately this includes a caret return, and Neoterm doesn't support
" otherwise. Hence this is only superficially useful in enumerating results.
nnoremap <buffer> <LocalLeader><Leader> :silent T n<CR>
