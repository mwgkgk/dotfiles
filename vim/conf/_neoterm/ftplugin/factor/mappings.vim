" ||
" || Repl control
" ||

" Runfactor
nnoremap <silent> <buffer> <Leader>r :T runfactor <C-r>=expand("%:p")<CR><CR>

" Open repl
nnoremap <buffer> <LocalLeader><LocalLeader> :T factor-repl<CR>

" Autouse
nnoremap <buffer> <LocalLeader>a :T auto-use? toggle<CR>

" Restarts
nnoremap <buffer> <LocalLeader>1 :T :1<CR>
nnoremap <buffer> <LocalLeader>2 :T :2<CR>
nnoremap <buffer> <LocalLeader>3 :T :3<CR>
nnoremap <buffer> <LocalLeader>4 :T :4<CR>
nnoremap <buffer> <LocalLeader>5 :T :5<CR>

" Errors
nnoremap <buffer> <LocalLeader>e :T :errors<CR>

" Clear
nnoremap <buffer> <LocalLeader>c :T clear<CR>

" Reload
nnoremap <buffer> <LocalLeader>r :T "<C-r>=expand('%:t:r')<CR>" reload<CR>

" Load file
nnoremap <buffer> <LocalLeader>l :T "<C-r>=expand('%:p')<CR>" run-file<CR>
nnoremap <buffer> <LocalLeader><Leader> :T "<C-r>=expand('%:p')<CR>" run-file<CR>

" Package
nnoremap <buffer> <LocalLeader>i :T IN: <C-r>=expand('%:t:r')<CR><CR>

" ||
" || Send
" ||

nnoremap <buffer> X :TREPLSendLine<CR>
vnoremap <buffer> X :TREPLSendSelection<CR>

" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <Space>X :TREPLSendFile<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)
xmap <buffer> <Leader>x <Plug>(neoterm-repl-send)

nmap <buffer> <Leader>X <Plug>(neoterm-repl-send-line)

" Send word under cursor
nnoremap <buffer> <C-x>x :T <C-r><C-w><CR>
nnoremap <buffer> <C-x><C-x> :T <C-r><C-w><CR>

" C-q and q offer word- and section-based send:
" In the general case, <C-q> and q both offer neoterm-repl-send motion.
" C-q works in insert mode.
" xmap is for visual, and duplicates :TREPLSendSelection.
nmap <buffer> q <Plug>(neoterm-repl-send)
xmap <buffer> q <Plug>(neoterm-repl-send)
nmap <buffer> <C-q> <Plug>(neoterm-repl-send)
xmap <buffer> <C-q> <Plug>(neoterm-repl-send)

" Send 2 words, send 3 words
inoremap <buffer> <C-q>2 <Esc>vBBy:T <C-r>"<CR>gi
inoremap <buffer> <C-q>3 vBBBy:T <C-r>"<CR>gi

" C-q C-q to send word under cursor or last word
inoremap <buffer> <C-q><C-q> <Esc>:T <C-r><C-a><CR>a
nnoremap <buffer> <C-q><C-q> :T <C-r><C-a><CR>
nnoremap <buffer> qq :T <C-r><C-a><CR>

" C-q C-w to send from the beginning of the line til cursor
inoremap <buffer> <C-q><C-w> <Esc>v0y:T <C-r>"<CR>gi
nnoremap <buffer> <C-q><C-w> v0y:T <C-r>"<CR>

" C-q C-e to send from cursor till EoL
inoremap <buffer> <C-q><C-e> <Esc>v$y:T <C-r>"<CR>gi
nnoremap <buffer> <C-q><C-e> v$y:T <C-r>"<CR>


" ||
" || Docs
" ||

nnoremap <buffer> <C-g><C-g> :T \ <C-r><C-a> help<CR>

nnoremap <buffer> <C-g>s :T \ <C-r><C-a> see<CR>
nnoremap <buffer> <C-g>w :T "<C-r><C-a>" words.<CR>

nnoremap <buffer> <C-g>a :T "<C-r><C-a>" apropos<CR>
nnoremap <buffer> <C-g><C-a> :T "<C-r><C-a>" apropos<CR>

nnoremap <buffer> <C-g>u :T \ <C-r><C-a> usage.<CR>
nnoremap <buffer> <C-g>U :T \ <C-r><C-a> uses .<CR>

" inspect
nnoremap <buffer> <C-g>i :T inspect<CR>
nnoremap <buffer> <C-g><C-i> :T <C-r><C-a> inspect<CR>

" infer stack effect of line under cursor
nnoremap <buffer> <C-g>f :T [ <C-r><C-l> ] infer.<CR>

" ||
" || Stack
" ||

" Drop
nnoremap <buffer> <LocalLeader>d :T drop<CR>

" Dot
nnoremap <buffer> <LocalLeader>. :T .<CR>

" Nip
nnoremap <buffer> <LocalLeader>n :T nip<CR>

" Dup
nnoremap <buffer> <LocalLeader>D :T dup<CR>

" ||
" || Modules
" ||

" USE
nnoremap <buffer> <LocalLeader>u :T USE: <C-r>=expand('%:t:r')<CR><CR>

" ||
" || Tests
" ||

" Test
" TODO %s the -tests$ away
nnoremap <buffer> <LocalLeader>t :T "<C-r>=expand('%:t:r')<CR>" test<CR>
