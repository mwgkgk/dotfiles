" ||
" || Repl control
" ||

" Open repl
nnoremap <buffer> <LocalLeader>gg :silent T factor-repl<CR>

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

" ||
" || Docs
" ||

" <C-g> to help word
nnoremap <buffer> <C-g> :silent T \ <C-r><C-a> help<CR>

" g<C-g> to see word
nnoremap <buffer> g<C-g> :silent T \ <C-r><C-a> see<CR>

" ||
" || Stack
" ||

" Drop
nnoremap <buffer> <LocalLeader>d :silent T drop<CR>

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
