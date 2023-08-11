" ||
" || Run
" ||

nnoremap <silent> <buffer> <LocalLeader>r :T racket <C-r>=expand('%')<CR><CR>

" ||
" || Repl
" ||

nnoremap <buffer> <LocalLeader><LocalLeader> :T racket<CR>

" ||
" || Eval
" ||

" TODO Accept count
" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" Call atom under cursor
nnoremap <silent> <buffer> <C-x><C-x> :silent T (<C-r><C-w>)<CR>
" Send atom under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-w><CR>

nnoremap <buffer> <LocalLeader>X :TREPLSendLine<CR>

nnoremap <buffer> <LocalLeader>l :silent T ,load "<C-r>=expand('%')<CR>"<CR>

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)

" ||
" || Debug
" ||

" Backtrace
nnoremap <silent> <buffer> <LocalLeader>b :T ,bt<CR>

" ||
" || Docs
" ||

nnoremap <buffer> g<C-g> :silent T ,doc <C-r><C-w><CR>
nnoremap <buffer> <C-g><C-g> :silent T ,describe <C-r><C-w><CR>
nnoremap <buffer> <C-g>d :silent T (procedure-arity <C-r><C-w>)<CR>

" ||
" || raco
" ||

nnoremap <silent> <buffer> <LocalLeader>pi :T (begin (require pkg) (pkg-install-command "<C-r><C-w>"))<CR>
nnoremap <buffer> <LocalLeader>pI :T (begin (require pkg) (pkg-install-command ""))<Left><Left><Left>

" ||
" || Buffer mappings
" ||

" Temp fix 2022-08-18
nnoremap <silent> <buffer> <LocalLeader>B :source ~/dot/vim/conf/_neoterm/ftplugin/racket/mappings.vim<CR>
