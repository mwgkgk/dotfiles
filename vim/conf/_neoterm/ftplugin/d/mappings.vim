" ||
" || Compiler control
" ||

" TODO function! DMap_SetCompiler(compiler)

" Mon Aug  2 05:35:30 UTC 2021

" Default flags recommended:
" -de           show use of deprecated features as errors (halt compilation)
" -w            warnings as errors (compilation will halt)
" -unittest     compile in unit tests
nnoremap <silent> <buffer> <Leader>r :T rdmd -de -w -unittest <C-r>=expand('%')<CR><CR>

" Mon Aug  2 05:50:00 UTC 2021

nnoremap <silent> <buffer> <LocalLeader>dv :T dmd --version<CR>

" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader><LocalLeader> :silent T d-repl<CR>

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

" ||
" || Help
" ||

nnoremap <buffer> <C-g> :silent T help <C-r><C-a><CR>
nnoremap <buffer> g<C-g> :silent T source <C-r><C-a><CR>
