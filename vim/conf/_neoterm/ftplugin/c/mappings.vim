" ||
" || Compiler
" ||

nnoremap <buffer> <Leader>r :T tcc -lgit2 -run <C-r>=expand('%')<CR><CR>

" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader><LocalLeader> :T cling-repl<CR>

" The proper way to handle rc file seems to be,
"   cling < ~/dot/repl/.clingrc
" However, probably due to standard library mismatch,
" the import line completes with errors, which makes the whole thing exit.
" This way thing it works despite errors:
nnoremap <silent> <buffer> <LocalLeader>pig :T #include "cling/Interpreter/Interpreter.h"<CR> <Bar> :T gCling->allowRedefinition()<CR>

" ||
" || Send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <Space>X :TREPLSendFile<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)
xmap <buffer> <Leader>x <Plug>(neoterm-repl-send)

nmap <buffer> <Leader>X <Plug>(neoterm-repl-send-line)

" ||
" || C-q
" ||

inoremap <silent> <buffer> <C-q><C-q> <Esc>:TREPLSendLine<CR>a

inoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>a
nnoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>

" To be continued...
inoremap <buffer> <C-q>2 <Esc>vBBy:silent T <C-r>"<CR>gi
inoremap <buffer> <C-q>3 <Esc>vBBBy:silent T <C-r>"<CR>gi
