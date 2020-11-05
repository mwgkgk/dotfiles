" <C-g> to help word
nnoremap <buffer> <C-g> :silent T \ <C-r><C-a> help<CR>

" g<C-g> to see word
nnoremap <buffer> g<C-g> :silent T \ <C-r><C-a> see<CR>

" Restarts
nnoremap <buffer> <LocalLeader>1 :silent T :1<CR>
nnoremap <buffer> <LocalLeader>2 :silent T :2<CR>
nnoremap <buffer> <LocalLeader>3 :silent T :3<CR>
nnoremap <buffer> <LocalLeader>4 :silent T :4<CR>
nnoremap <buffer> <LocalLeader>5 :silent T :5<CR>

" Errors
nnoremap <buffer> <LocalLeader>e :silent T :errors<CR>

" Clear
nnoremap <buffer> <LocalLeader>c :silent T clear<CR>

" Drop
nnoremap <buffer> <LocalLeader>d :silent T drop<CR>

" Dup
nnoremap <buffer> <LocalLeader>D :silent T dup<CR>

" Reload
nnoremap <buffer> <LocalLeader>r :silent T "<C-r>=expand('%:t:r')<CR>" reload<CR>
