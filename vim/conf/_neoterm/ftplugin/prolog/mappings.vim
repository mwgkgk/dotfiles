" ||
" || REPL control
" ||

" Open repl with file
nnoremap <buffer> <silent> <LocalLeader>r :call _neoterm#open#small('above', '') <Bar> :silent T swipl <C-r>=expand('%')<CR><CR>

nnoremap <buffer> <Leader>r :silent T make.<CR>

" TODO nnoremap <buffer> <silent> X 0f<Space>v$:TREPLSendSelection<CR>
" Problem lies in it only being usable on comment lines.

" Unfortunately this includes a caret return, and Neoterm doesn't support
" otherwise. Hence this is only superficially useful in enumerating results.
nnoremap <buffer> <LocalLeader><Leader> :silent T n<CR>

" TODO use tab-wide t:termbufnr, or scout for neoterm api to get bufnr
" nnoremap <buffer> <LocalLeader><Leader> :call term_sendkeys("n")<CR>

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
