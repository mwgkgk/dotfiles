" ||
" || REPL
" ||

" Open repl:
nnoremap <buffer> <Leader>r :call :below T erl<CR>

" Exit repl:
nnoremap <buffer> <LocalLeader>q :silent T exit().<CR>

" Compile current file
nnoremap <buffer> <LocalLeader>r :silent T compile:file("<C-r>=expand('%')<CR>", [debug_info, export_all]).<CR>

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

" ||
" || Punctuation
" ||

nnoremap <buffer> <LocalLeader>. :silent T .<CR>

" ||
" || Forget
" ||

nnoremap <buffer> <LocalLeader>f :silent T f(<C-r><C-w>).<CR>
