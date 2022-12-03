" ||
" || Run
" ||

nnoremap <silent> <buffer> <Leader>r :T perl <C-r>=expand('%')<CR><CR>
nnoremap <silent> <buffer> <Leader>R :T perl -MO=Deparse <C-r>=expand('%')<CR><CR>

nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T re.pl<CR>

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

" Send atom under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-a><CR>

" Require file
nnoremap <buffer> <LocalLeader>L :silent T require "<C-r>=expand('%:p')<CR>"<CR>
" Send file
nnoremap <buffer> <LocalLeader>l :silent TREPLSendFile<CR>

" ||
" || Docs
" ||

nnoremap <silent> <buffer> <C-g>S :T say <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>r :T ref <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>s :T scalar <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>d :T defined <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>f :T Class::Inspector->methods(ref <C-r><C-a>, 'full', 'public');<CR>
nnoremap <silent> <buffer> <C-g>F :T Class::Inspector->methods(ref <C-r><C-a>[0], 'full', 'public');<CR>
