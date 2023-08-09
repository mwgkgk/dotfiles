" ||
" || REPL
" ||

" Open repl:
nnoremap <buffer> <silent> <LocalLeader><LocalLeader> :T erl<CR>

" Exit repl:
nnoremap <buffer> <silent> <LocalLeader>q :T exit().<CR>

" Compile current file
nnoremap <buffer> <silent> <Leader>r :T c("<C-r>=expand('%')<CR>", [debug_info, export_all, verbose]).<CR>

" ||
" || Send
" ||

nnoremap <buffer> <silent> X :TREPLSendLine<CR>
vnoremap <buffer> <silent> X :TREPLSendSelection<CR>

" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <Space>X :TREPLSendFile<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <buffer> <silent> <Leader>x <Plug>(neoterm-repl-send)
xmap <buffer> <silent> <Leader>x <Plug>(neoterm-repl-send)

nmap <buffer> <silent> <Leader>X <Plug>(neoterm-repl-send-line)

" ||
" || Punctuation
" ||

nnoremap <buffer> <silent> <LocalLeader>. :T .<CR>

" ||
" || Forget
" ||

nnoremap <buffer> <silent> <LocalLeader>f :T f(<C-r><C-w>).<CR>
