" ||
" || REPL control
" ||

" This one conflicts with neoterm#repl#set which cannot be unset
" nnoremap <buffer> <silent> <LocalLeader>r :call _neoterm#open#small('above', '') <Bar> :silent T python<CR>


" Source current file
nnoremap <buffer> <silent> <Leader>r :T exec(open('<C-r>=expand("%")<CR>').read())<CR>

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

nnoremap <buffer> <C-g> <Esc> :T info args <C-r><C-a><CR>
nnoremap <buffer> g<C-g> <Esc> :T info body <C-r><C-a><CR>

" ||
" || C-q
" ||

inoremap <silent> <buffer> <C-q><C-q> <Esc>:TREPLSendLine<CR>a
nnoremap <buffer> <C-q><C-q> <Esc>:silent T <C-r><C-a><CR>

inoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>a
nnoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>

" To be continued...
inoremap <buffer> <C-q>2 <Esc>vBBy:silent T <C-r>"<CR>gi
inoremap <buffer> <C-q>3 <Esc>vBBBy:silent T <C-r>"<CR>gi
