" <C-g> to see word
nnoremap <buffer> <C-g> :silent T \ <C-r><C-a> see<CR>

" g<C-g> to help word
nnoremap <buffer> g<C-g> :silent T \ <C-r><C-a> help<CR>

" Restarts
nnoremap <buffer> g<Leader>1 :silent T :1<CR>
nnoremap <buffer> g<Leader>2 :silent T :2<CR>
nnoremap <buffer> g<Leader>3 :silent T :3<CR>
nnoremap <buffer> g<Leader>4 :silent T :4<CR>
nnoremap <buffer> g<Leader>5 :silent T :5<CR>

" Errors
nnoremap <buffer> g<Leader>e :silent T :errors<CR>

" Clear
nnoremap <buffer> g<Leader>c :silent T clear<CR>

" Drop
nnoremap <buffer> g<Leader>d :silent T drop<CR>
