" ||
" || Open
" ||

" Replace current window with term:
nnoremap <silent> <Leader><Space>e :call _neoterm#open#here()<CR>

" New tab:
nnoremap <silent> <Leader><Space>c ::call _neoterm#open#jump('tab', '')<CR>

" New 50% terminal window:

" (Symmetry with <Space>ge)
nnoremap <silent> <Leader><Space>ge :call _neoterm#open#jump('below', '')<CR>

nnoremap <silent> <Leader><Space>n :call _neoterm#open#jump('above', '')<CR>
nnoremap <silent> <Leader><Space>N :call _neoterm#open#jump('below', 'vert')<CR>

" New 50% terminal window above / to the left:
nnoremap <silent> <Leader><Space>gn :call _neoterm#open#jump('below', '')<CR>
nnoremap <silent> <Leader><Space>gN :call _neoterm#open#jump('above', 'vert')<CR>

" In the following commands, leaving the original commands for plain :term as
" they are different enough to warrant it.

" New 33% terminal window:

" nnoremap <silent> <Leader><Space>V :exec 'term ++rows=' . winheight(0)/4<CR>
nnoremap <silent> <Leader><Space>V :call _neoterm#open#small('below', '')<CR>

" nnoremap <silent> <Leader><Space>gv :exec 'vert term ++cols=' . winwidth(0)/4<CR>
nnoremap <silent> <Leader><Space>gv :call _neoterm#open#small('below', 'vert')<CR>

" New 33% terminal above/to the left:

" nnoremap <silent> <Leader><Space>v :exec 'above term ++rows=' . winheight(0)/4<CR>
nnoremap <silent> <Leader><Space>v :call _neoterm#open#small('above', '')<CR>

" nnoremap <silent> <Leader><Space>gV :exec 'above vert term ++cols=' . winwidth(0)/4<CR>
nnoremap <silent> <Leader><Space>gV :call _neoterm#open#small('above', 'vert')<CR>

" ||
" || Make
" ||

" F9 for poor man's make using :terminal
" TODO Utilize makeprg for :make in neoterm on <F9>
nnoremap <F9> :rightbelow T make<CR>

" ||
" || Send
" ||

" Move shit to individual filetypes, because blanket send to repl is bad.
" nnoremap <silent> X :TREPLSendLine<CR>
" vnoremap <silent> X :TREPLSendSelection<CR>

" " TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" " nnoremap <Space>X :TREPLSendFile<CR>

" " The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
" nmap <Leader>x <Plug>(neoterm-repl-send)
" xmap <Leader>x <Plug>(neoterm-repl-send)

" nmap <Leader>X <Plug>(neoterm-repl-send-line)

" Enter your own stuff
nnoremap <LocalLeader><LocalLeader> :T<Space>

" ||
" || Do-thing
" ||

nnoremap <Leader>R :silent T do-thing<CR>

" ||
" || Close
" ||

nnoremap <silent> <LocalLeader>d :silent T exit<CR>
