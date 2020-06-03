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

nnoremap <Space>x :TREPLSendFile<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <Leader>x <Plug>(neoterm-repl-send)
xmap <Leader>x <Plug>(neoterm-repl-send)

nmap <Leader>X <Plug>(neoterm-repl-send-line)
