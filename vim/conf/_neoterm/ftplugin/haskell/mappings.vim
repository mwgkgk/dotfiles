" ||
" || REPL control
" ||

" Run repl
nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T ghci<CR>

" Load current file
nnoremap <silent> <buffer> <Leader>r :T :l <C-r>=expand("%")<CR><CR>
nnoremap <silent> <buffer> <LocalLeader>l :T :l <C-r>=expand("%")<CR><CR>

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
" || Docs
" ||

nnoremap <buffer> <C-g> <Esc> :T :type <C-r><C-w><CR>
nnoremap <buffer> g<C-g> <Esc> :T :kind <C-r><C-w><CR>
