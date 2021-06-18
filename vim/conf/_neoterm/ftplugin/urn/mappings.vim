" ||
" || Run repl
" ||

nnoremap <silent> <buffer> <LocalLeader>gg :T urn<CR>

" ||
" || Reload
" ||

nnoremap <silent> <buffer> <LocalLeader>r :T reload<CR>
nnoremap <silent> <buffer> <Leader>r :T reload<CR>

" ||
" || Docs
" ||

" Temporary cause lisp
nunmap <buffer> <C-g>a
nunmap <buffer> <C-g><C-a>
nunmap <buffer> <C-g><C-g>
nunmap <buffer> <C-g>d
nunmap <buffer> <C-g><C-d>
nunmap <buffer> <C-g>v
nunmap <buffer> <C-g>s
nunmap <buffer> <C-g>f
nunmap <buffer> <C-g>m
nunmap <buffer> <C-g>h
nunmap <buffer> <C-g><C-h>
nnoremap <silent> <buffer> <C-g> :T :doc <C-r><C-w><CR>
nnoremap <silent> <buffer> g<C-g> :T :view <C-r><C-w><CR>
nnoremap <silent> <buffer> <LocalLeader><C-g> :T :search <C-r><C-w><CR>
nnoremap <silent> <buffer> <Leader><C-g> :T :search <C-r><C-w><CR>

" ||
" || Send
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af
