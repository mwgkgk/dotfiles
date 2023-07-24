" ||
" || Run
" ||

nnoremap <silent> <buffer> <LocalLeader>r :T bigloo-run <C-r>=expand('%')<CR><CR>

" ||
" || Opening a repl
" ||

nnoremap <buffer> <LocalLeader><LocalLeader> :T chez<CR>
nnoremap <buffer> <LocalLeader>[cy :T icyc<CR>
nnoremap <buffer> <LocalLeader>[ch :T icyc<CR>
nnoremap <buffer> <LocalLeader>[gu :T guile<CR>
nnoremap <buffer> <LocalLeader>[ga :T gsi<CR>
nnoremap <buffer> <LocalLeader>[bi :T bigloo<CR>
nnoremap <buffer> <LocalLeader>[go :T gosh<CR>

" ||
" || Sending to repl
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" Call atom under cursor
nnoremap <silent> <buffer> <C-x><C-x> :silent T (<C-r><C-w>)<CR>
" Send atom under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-w><CR>

nnoremap <buffer> <LocalLeader>X :TREPLSendLine<CR>

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)

nnoremap <buffer> <LocalLeader>l :silent T ,load "<C-r>=expand('%')<CR>"<CR>

" ||
" || Docs
" ||

" Guile:
" nnoremap <buffer> <C-g> :silent T ,describe <C-r><C-w><CR>

" Chez:
nnoremap <buffer> <C-g> :silent T (apropos "<C-r><C-w>")<CR>
