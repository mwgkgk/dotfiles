" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader>r :call _neoterm#open#small('above', '') <Bar> :silent T gf<CR>

" Load current file
nnoremap <buffer> <silent> <Leader>r :T include <C-r>=expand("%")<CR><CR>

" Reload RC
nnoremap <buffer> <silent> <LocalLeader>R :T load-rc<CR>

" ||
" || Send
" ||

" : →   .s clearstack ;
nnoremap <silent> <buffer> X :T <C-r>=getline('.')<CR> →<CR>
" : ↓   cr .s clearstack ;
nnoremap <silent> <buffer> gX :T <C-r>=getline('.')<CR> ↓<CR>

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
nnoremap <buffer> <C-q><C-q> <Esc>:silent T <C-r><C-a><CR>

inoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>a
nnoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>

" To be continued...
inoremap <buffer> <C-q>2 <Esc>vBBy:silent T <C-r>"<CR>gi
inoremap <buffer> <C-q>3 <Esc>vBBBy:silent T <C-r>"<CR>gi

" ||
" || See
" ||

nnoremap <buffer> <C-g> :silent T see <C-r><C-a><CR>

nnoremap <buffer> <LocalLeader><C-g> :silent T simple-see <C-r><C-a><CR>

nnoremap <buffer> g<C-g> :silent T help <C-r><C-a><CR>

nnoremap <buffer> <Leader><C-g> :silent T locate <C-r><C-a><CR>

" ||
" || Stack
" ||

" Stack
nnoremap <buffer> <LocalLeader>s :silent T .s<CR>
inoremap <buffer> <C-q>s <Esc>:silent T .s<CR>a

" Clear
nnoremap <buffer> <LocalLeader>c :silent T clearstack<CR>
inoremap <buffer> <C-q>c <Esc>:silent T clearstack<CR>a

" ||
" || Drop
" ||

" .
nnoremap <buffer> <LocalLeader>. :silent T .<CR>

" Drop
nnoremap <buffer> <LocalLeader>d :silent T drop<CR>

" ||
" || Dup
" ||

" Dup
nnoremap <buffer> <LocalLeader>D :silent T dup<CR>
