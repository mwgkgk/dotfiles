" ||
" || Open
" ||

" Replace current window with term:
nnoremap <silent> <Leader><Space>ge :call _neoterm#open#here()<CR>

" New tab:
nnoremap <silent> <Leader><Space>c :tab Tnew<CR>

" New 50% terminal window:
nnoremap <silent> <Leader><Space>n :below Tnew<CR>
nnoremap <silent> <Leader><Space>N :vert Tnew<CR>

" New 50% terminal window above / to the left:
nnoremap <silent> <Leader><Space>gn :above Tnew<CR>
nnoremap <silent> <Leader><Space>gN :above vert Tnew<CR>

" In the following commands, leaving the original commands for plain :term as
" they are different enough to warrant it.

" New 33% terminal window:

" nnoremap <silent> <Leader><Space>v :exec 'term ++rows=' . winheight(0)/4<CR>
nnoremap <silent> <Leader><Space>v :call _neoterm#open#small('below', '')<CR>

" nnoremap <silent> <Leader><Space>V :exec 'vert term ++cols=' . winwidth(0)/4<CR>
nnoremap <silent> <Leader><Space>V :call _neoterm#open#small('below', 'vert')<CR>

" New 33% terminal above/to the left:

" nnoremap <silent> <Leader><Space>gv :exec 'above term ++rows=' . winheight(0)/4<CR>
nnoremap <silent> <Leader><Space>gv :call _neoterm#open#small('above', '')<CR>

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

nnoremap <silent> X :TREPLSendLine<CR>
vnoremap <silent> X :TREPLSendSelection<CR>

nnoremap <Space>X :TREPLSendFile<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <Leader>x <Plug>(neoterm-repl-send)
xmap <Leader>x <Plug>(neoterm-repl-send)

nmap <Leader>X <Plug>(neoterm-repl-send-line)

" ||
" || Do-thing
" ||

nnoremap <Leader>R :silent T do-thing<CR>
