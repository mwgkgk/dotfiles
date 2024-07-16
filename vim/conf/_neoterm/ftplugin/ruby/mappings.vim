" ||
" || REPL control
" ||

" Run script
nnoremap <silent> <buffer> <Leader>r :T ruby <C-r>=expand('%')<CR><CR>

" Run repl
" nnoremap <buffer> <silent> <LocalLeader><LocalLeader> :T irb --nocolorize<CR>
nnoremap <buffer> <silent> <LocalLeader><LocalLeader> :T irb<CR>

" Rake
nnoremap <buffer> <silent> <LocalLeader>b :T rake<CR>

" Test under cursor
nnoremap <silent> <buffer> <Leader>R :T ruby <C-r>=expand('%')<CR> -n <C-r><C-w><CR>

" ||
" || Send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" Uses vim-textobj-rubyblock to send surrounding function definition
nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)arb<Esc>
" for visual, same as X
xmap <buffer> <Leader>x <Plug>(neoterm-repl-send)

" Send file
nnoremap <buffer> <LocalLeader>L :silent TREPLSendFile<CR>
" Require file
nnoremap <buffer> <LocalLeader>l :silent T load "<C-r>=expand('%:p')<CR>"<CR>

" Send atom under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-x><C-x> :silent T <C-r><C-a><CR>

" Send motion
" xmap is for visual, and duplicates :TREPLSendSelection.
nmap <buffer> <C-q> <Plug>(neoterm-repl-send)
xmap <buffer> <C-q> <Plug>(neoterm-repl-send)

" Send 2 words, send 3 words
inoremap <silent> <buffer> <C-q>2 <Esc>vBBy:T <C-r>"<CR>gi
inoremap <silent> <buffer> <C-q>3 vBBBy:T <C-r>"<CR>gi

" C-q C-q to send word under cursor or last word
inoremap <silent> <buffer> <C-q><C-q> <Esc>:T <C-r><C-a><CR>a
nnoremap <silent> <buffer> <C-q><C-q> :T <C-r><C-a><CR>

" C-q C-w to send from the beginning of the line til cursor
inoremap <silent> <buffer> <C-q><C-w> <Esc>v0y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-w> v0y:T <C-r>"<CR>

" C-q C-e to send from cursor till EoL
inoremap <silent> <buffer> <C-q><C-e> <Esc>v$y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-e> v$y:T <C-r>"<CR>

" ||
" || C-q
" ||

inoremap <silent> <buffer> <C-q><C-q> <Esc>:TREPLSendLine<CR>a

inoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>a
nnoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>

" To be continued...
inoremap <buffer> <C-q>2 <Esc>vBBy:silent T <C-r>"<CR>gi
inoremap <buffer> <C-q>3 <Esc>vBBBy:silent T <C-r>"<CR>gi

" ||
" || Send to Vim
" ||

nnoremap <silent> <buffer> <LocalLeader>vx :rubydo <C-r><C-l><CR>
nnoremap <silent> <buffer> <LocalLeader>vf :rubydo load "<c-r>=expand("%")<CR>"<CR>

" ||
" || Help
" ||

" nnoremap <buffer> <C-g> :silent T help <C-r><C-a><CR>
" nnoremap <buffer> g<C-g> :silent T source <C-r><C-a><CR>
