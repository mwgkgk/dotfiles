" ||
" || Compiler control
" ||

" nnoremap <silent> <buffer> <Leader>r :T idris2 -x main <C-r>=expand('%')<CR><CR>
nnoremap <silent> <buffer> <Leader>r :T idris2 -x main <C-r>=expand('%:p')<CR><CR>

" Fri Aug  5 07:17:47 UTC 2022

" ||
" || Repl
" ||

nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T idris2<CR>

" ||
" || Send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" C-q and q offer word- and section-based send:
" In the general case, <C-q> and q both offer neoterm-repl-send motion.
" C-q works in insert mode.
" xmap is for visual, and duplicates :TREPLSendSelection.
nmap <buffer> q <Plug>(neoterm-repl-send)
xmap <buffer> q <Plug>(neoterm-repl-send)
nmap <buffer> <C-q> <Plug>(neoterm-repl-send)
xmap <buffer> <C-q> <Plug>(neoterm-repl-send)

" Send 2 words, send 3 words
inoremap <silent> <buffer> <C-q>2 <Esc>vBBy:T <C-r>"<CR>gi
inoremap <silent> <buffer> <C-q>3 vBBBy:T <C-r>"<CR>gi

" C-q C-q to send word under cursor or last word
inoremap <silent> <buffer> <C-q><C-q> <Esc>:T <C-r><C-a><CR>a
nnoremap <silent> <buffer> <C-q><C-q> :T <C-r><C-a><CR>
nnoremap <silent> <buffer> qq :T <C-r><C-a><CR>

" C-q C-w to send from the beginning of the line til cursor
inoremap <silent> <buffer> <C-q><C-w> <Esc>v0y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-w> v0y:T <C-r>"<CR>

" C-q C-e to send from cursor till EoL
inoremap <silent> <buffer> <C-q><C-e> <Esc>v$y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-e> v$y:T <C-r>"<CR>

" ||
" || Load
" ||

nnoremap <silent> <buffer> <LocalLeader>l :T :l "<C-r>=expand('%:p')<CR>"<CR>
