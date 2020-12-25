" ||
" || REPL
" ||

" Open repl:
nnoremap <buffer> <LocalLeader>r :call _neoterm#open#small('above', '') <Bar> :silent T scala<CR>

" Exit repl:
nnoremap <buffer> <LocalLeader>q :silent T :quit<CR>

" Compile current file
nnoremap <buffer> <Leader>r :silent T :load "<C-r>=expand('%')<CR>".<CR>

" ||
" || Send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" nnoremap <Space>X :TREPLSendFile<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)
xmap <buffer> <Leader>x <Plug>(neoterm-repl-send)

nmap <buffer> <Leader>X <Plug>(neoterm-repl-send-line)

