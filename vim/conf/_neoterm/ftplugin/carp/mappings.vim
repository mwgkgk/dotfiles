" ||
" || Opening a repl
" ||

nnoremap <buffer> <LocalLeader>r :silent :above T carp <C-r>=expand('%')<CR><CR>

nnoremap <buffer> <Leader>r :silent T :r<CR>

nnoremap <buffer> <LocalLeader>b :silent T :b<CR>
nnoremap <buffer> <LocalLeader>p :silent T :p<CR>
nnoremap <buffer> <LocalLeader>q :silent T :q<CR>
nnoremap <LocalLeader>h :T :h 

" ||
" || Sending to repl
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" ||
" || Docs
" ||

nnoremap <buffer> <C-g> :silent T (info <C-r><C-w>)<CR>
nnoremap <buffer> g<C-g> :silent T (type <C-r><C-w>)<CR>
nnoremap <buffer> <Leader><C-g> :silent T (expand <C-r><C-w>)<CR>
nnoremap <buffer> <LocalLeader><C-g> :silent T (c <C-r><C-w>)<CR>

nnoremap <LocalLeader>i :T :i 
