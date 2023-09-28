" ||
" || Forth
" ||

" See under cursor
" nnoremap <silent> <buffer> <C-g><C-g> :T see <C-r><C-a><CR>a

" ||
" || Factor
" ||

" Everything factor
source ~/.vim/conf/_neoterm/ftplugin/factor/mappings.vim

" Override the more used ones to fix bug that i need to press A after send
" nnoremap <buffer> <C-g><C-g> :T \ <C-r><C-a> help<CR> <bar> :normal A<C-c><CR>

" Override everything manually (dont work so good)
" '<,'>s/<CR>$/<CR><bar>:T <C-c><CR>/
