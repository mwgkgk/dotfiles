" ||
" || Cargo
" ||

nnoremap <silent> <buffer> <LocalLeader>b :T cargo build<CR>

" ||
" || REPL control
" ||

" Run repl
" nnoremap <buffer> <silent> <LocalLeader>r :silent T papyrus<CR>
nnoremap <buffer> <silent> <LocalLeader><LocalLeader> :silent T rust-repl<CR>


" Source current file
" nnoremap <buffer> <silent> <Leader>r :T source <C-r>=expand("%")<CR><CR>

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

" nnoremap <buffer> <C-g> <Esc> :T info args <C-r><C-a><CR>
" nnoremap <buffer> g<C-g> <Esc> :T info body <C-r><C-a><CR>
