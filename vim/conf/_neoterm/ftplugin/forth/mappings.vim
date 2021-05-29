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

" The idea is as follows:
" - X to send line under cursor
nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" - Fancy old X that prints & clears stack, still very useful
" Uses following words:
" : →   .s clearstack ;
" : ↓   cr .s clearstack ;
nnoremap <silent> <buffer> <Leader>x :T <C-r>=getline('.')<CR> →<CR>
nnoremap <silent> <buffer> <Leader>gx :T <C-r>=getline('.')<CR> ↓<CR>

" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <Space>X :TREPLSendFile<CR>

" C-q and q offer word- and section-based send:
" In the general case, <C-q> and q both offer neoterm-repl-send motion.
" C-q works in insert mode.
" xmap is for visual, and duplicates :TREPLSendSelection.
nmap <buffer> q <Plug>(neoterm-repl-send)
xmap <buffer> q <Plug>(neoterm-repl-send)
nmap <buffer> <C-q> <Plug>(neoterm-repl-send)
xmap <buffer> <C-q> <Plug>(neoterm-repl-send)

" Send 2 words, send 3 words
inoremap <buffer> <C-q>2 <Esc>vBBy:silent T <C-r>"<CR>gi
inoremap <buffer> <C-q>3 vBBBy:silent T <C-r>"<CR>gi

" C-q C-q to send word under cursor or last word
inoremap <buffer> <C-q><C-q> <Esc>:silent T <C-r><C-a><CR>a
nnoremap <buffer> <C-q><C-q> :silent T <C-r><C-a><CR>
nnoremap <buffer> qq :silent T <C-r><C-a><CR>

" C-q C-w to send from the beginning of the line til cursor
inoremap <silent> <buffer> <C-q><C-w> <Esc>v0y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-w> v0y:T <C-r>"<CR>

" C-q C-e to send from cursor till EoL
inoremap <silent> <buffer> <C-q><C-e> <Esc>v$y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-e> v$y:T <C-r>"<CR>

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
