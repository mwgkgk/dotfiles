" ||
" || Send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" ||
" || Examine
" ||

nnoremap <silent> <buffer> <LocalLeader>f :T x/i $rip<CR>
nnoremap <silent> <buffer> <LocalLeader>l :T x/10i $rip<CR>
nnoremap <silent> <buffer> <LocalLeader>L :T x/10i $rip - 10<CR>

" ||
" || Step
" ||

nnoremap <silent> <buffer> <LocalLeader>n :T nexti<CR>
nnoremap <silent> <buffer> <LocalLeader>s :T stepi<CR>

nnoremap <silent> <buffer> <LocalLeader>r :T run<CR>
nnoremap <silent> <buffer> <LocalLeader>c :T continue<CR>
nnoremap <silent> <buffer> <LocalLeader>C :T start<CR>
nnoremap <silent> <buffer> <LocalLeader>y :T y<CR>
