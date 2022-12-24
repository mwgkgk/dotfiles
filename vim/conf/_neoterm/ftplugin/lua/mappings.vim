if !has('nvim')
    " ||
    " || REPL control
    " ||

    " Run repl
    nnoremap <buffer> <silent> <LocalLeader>r :call _neoterm#open#small('above', '') <Bar> :silent T lua<CR>


    " Source current file
    nnoremap <buffer> <silent> <Leader>r :T loadfile(<C-r>=expand("%")<CR>)<CR>

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
else
    " Neovim config
    " Source current line
    nnoremap <silent> <buffer> X :.source<CR>
    " Source selection
    vnoremap <silent> <buffer> X :source<CR>
    " Source file
    nnoremap <buffer> <LocalLeader>l :silent! :w <bar> :luafile %<CR>

endif
