scriptencoding utf-8

" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader>r :silent T gf<CR>

" Load current file
nnoremap <buffer> <silent> <Leader>r :T include <C-r>=expand("%")<CR><CR>

" Reload RC
nnoremap <buffer> <silent> <LocalLeader>R :T load-rc<CR>

" ||
" || Send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" : →   .s clearstack ;
nnoremap <silent> <buffer> <Leader>x :T <C-r>=getline('.')<CR> →<CR>
" : ↓   cr .s clearstack ;
nnoremap <silent> <buffer> <Leader>gx :T <C-r>=getline('.')<CR> ↓<CR>

" qq works out to be "from here til the last bracket" and its kinda cool
" The latter is for visual, and duplicates :TREPLSendSelection.
nmap <buffer> q <Plug>(neoterm-repl-send)
xmap <buffer> q <Plug>(neoterm-repl-send)

" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <Space>X :TREPLSendFile<CR>

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
nnoremap <buffer> <Leader>s :silent T .s<CR>

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
