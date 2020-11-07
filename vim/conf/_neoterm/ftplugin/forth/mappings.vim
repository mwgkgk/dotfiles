" Run repl
nnoremap <buffer> <silent> <Leader>r :call _neoterm#open#small('above', '') <Bar> :silent T gforth<CR>

" Stack
nnoremap <buffer> <LocalLeader>s :silent T .s<CR>

" .
nnoremap <buffer> <LocalLeader>. :silent T .<CR>

" Clear
nnoremap <buffer> <LocalLeader>c :silent T clearstack<CR>

" Drop
nnoremap <buffer> <LocalLeader>d :silent T drop<CR>

" Dup
nnoremap <buffer> <LocalLeader>D :silent T dup<CR>

" <C-g> to see word
nnoremap <buffer> <C-g> :silent T see <C-r><C-a><CR>

" g<C-g> to simple-see word
nnoremap <buffer> g<C-g> :silent T simple-see <C-r><C-a><CR>

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
