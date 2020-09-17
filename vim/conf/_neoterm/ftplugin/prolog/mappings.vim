" Open repl with file
nnoremap <buffer> <Leader>r :silent T swipl <C-r>=expand('%')<CR><CR>

nnoremap <buffer> <LocalLeader>r :silent T make.<CR>

" TODO nnoremap <buffer> <silent> X 0f<Space>v$:TREPLSendSelection<CR>
" Problem lies in it only being usable on comment lines.

nnoremap <buffer> <LocalLeader><Space> :silent T \ <CR>
