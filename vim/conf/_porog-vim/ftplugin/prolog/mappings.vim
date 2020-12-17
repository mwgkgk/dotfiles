" ||
" || Endline
" ||

" Because
inoremap <silent> <buffer> <M-;> <Esc>:call porog#endline#set(' :-')<CR>a
nnoremap <silent> <buffer> <M-;> :call porog#endline#set(' :-')<CR>

" Fact
inoremap <silent> <buffer> <M-.> <Esc>:call porog#endline#set('.')<CR>a
nnoremap <silent> <buffer> <M-.> :call porog#endline#set('.')<CR>

" And
inoremap <silent> <buffer> <M-,> <Esc>:call porog#endline#set(',')<CR>a
nnoremap <silent> <buffer> <M-,> :call porog#endline#set(',')<CR>
