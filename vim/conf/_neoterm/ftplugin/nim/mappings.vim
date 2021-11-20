" ||
" || Compiler
" ||

" Run
nnoremap <buffer> <silent> <Leader>r :T nim r <C-r>=expand("%")<CR><CR>

" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader>r :silent T inim<CR>

" TODO Load current file
" nnoremap <buffer> <silent> <Leader>r :T include <C-r>=expand("%")<CR><CR>

" TODO Reload RC
" nnoremap <buffer> <silent> <LocalLeader>R :T load-rc<CR>

" ||
" || Eval
" ||

" TODO These don't auto run repl like <Plug>(neoterm-repl-send)
nnoremap <silent> <buffer> X :TREPLSendLine<CR>

" TODO Send space as last line bcus identation-based syntax
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" Send word
nmap <silent> <buffer> <Leader>X <Plug>(neoterm-repl-send)aw

" TODO send top expr
" nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)

" Send file
nnoremap <buffer> <silent> <LocalLeader>l :TREPLSendFile<CR>

" ||
" || C-q
" ||

inoremap <silent> <buffer> <C-q><C-q> <Esc>:TREPLSendLine<CR>a

inoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>a
nnoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>

" To be continued...
inoremap <buffer> <C-q>2 <Esc>vBBy:silent T <C-r>"<CR>gi
inoremap <buffer> <C-q>3 <Esc>vBBBy:silent T <C-r>"<CR>gi

" ||
" || Docs
" ||

" TODO docs
" nnoremap <buffer> g<C-g> :silent T ,doc <C-r><C-w><CR>
" nnoremap <buffer> <C-g> :silent T ,describe <C-r><C-w><CR>
