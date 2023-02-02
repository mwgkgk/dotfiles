" ||
" || Repl control
" ||

" Runfactor
nnoremap <silent> <buffer> <Leader>r :T runfactor <C-r>=expand("%:p")<CR><CR>

" Open repl
nnoremap <buffer> <LocalLeader><LocalLeader> :silent T factor-repl<CR>

" Autouse
nnoremap <buffer> <LocalLeader>a :silent T auto-use<CR>

" Restarts
nnoremap <buffer> <LocalLeader>1 :silent T :1<CR>
nnoremap <buffer> <LocalLeader>2 :silent T :2<CR>
nnoremap <buffer> <LocalLeader>3 :silent T :3<CR>
nnoremap <buffer> <LocalLeader>4 :silent T :4<CR>
nnoremap <buffer> <LocalLeader>5 :silent T :5<CR>

" Errors
nnoremap <buffer> <LocalLeader>e :silent T :errors<CR>

" Clear
nnoremap <buffer> <LocalLeader>c :silent T clear<CR>

" Reload
nnoremap <buffer> <LocalLeader>r :silent T "<C-r>=expand('%:t:r')<CR>" reload<CR>

" Load file
nnoremap <buffer> <LocalLeader>l :silent T "<C-r>=expand('%:p')<CR>" run-file<CR>

" Package
nnoremap <buffer> <LocalLeader>i :silent T IN: <C-r>=expand('%:t:r')<CR><CR>

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

" Send word under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-w><CR>
nnoremap <silent> <buffer> <C-x><C-x> :silent T <C-r><C-w><CR>

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
" || Docs
" ||

nnoremap <buffer> <C-g><C-g> :silent T \ <C-r><C-a> see<CR>

nnoremap <buffer> <C-g>g :silent T \ <C-r><C-a> help<CR>

nnoremap <buffer> <C-g>a :silent T "<C-r><C-a>" apropos<CR>
nnoremap <buffer> <C-g><C-a> :silent T "<C-r><C-a>" apropos<CR>

nnoremap <buffer> <C-g>u :silent T \ <C-r><C-a> usage.<CR>
nnoremap <buffer> <C-g>U :silent T \ <C-r><C-a> uses .<CR>

" ||
" || Stack
" ||

" Drop
nnoremap <buffer> <LocalLeader>d :silent T drop<CR>

" Dot
nnoremap <buffer> <LocalLeader>. :silent T .<CR>

" Nip
nnoremap <buffer> <LocalLeader>n :silent T nip<CR>

" Dup
nnoremap <buffer> <LocalLeader>D :silent T dup<CR>

" ||
" || Modules
" ||

" USE
nnoremap <buffer> <LocalLeader>u :silent T USE: <C-r>=expand('%:t:r')<CR><CR>

" ||
" || Tests
" ||

" Test
" TODO %s the -tests$ away
nnoremap <buffer> <LocalLeader>t :silent T "<C-r>=expand('%:t:r')<CR>" test<CR>
