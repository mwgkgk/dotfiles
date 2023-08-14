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
" Print atom under cursor
nnoremap <silent> <buffer> <C-x><C-g> :T (print <C-r><C-w>)<CR>

" Send line
nnoremap <buffer> <Leader>X :TREPLSendLine<CR>

" Top-level form
nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)

" C-q and q offer word- and section-based send:
" In the general case, <C-q> and q both offer neoterm-repl-send motion.
" C-q works in insert mode.
" xmap is for visual, and duplicates :TREPLSendSelection.
" Disable q cause in lisp it's %
" nmap <buffer> q <Plug>(neoterm-repl-send)
" xmap <buffer> q <Plug>(neoterm-repl-send)
nmap <buffer> <C-q> <Plug>(neoterm-repl-send)
xmap <buffer> <C-q> <Plug>(neoterm-repl-send)

" Send 2 words, send 3 words
inoremap <silent> <buffer> <C-q>2 <Esc>vBBy:T <C-r>"<CR>gi
inoremap <silent> <buffer> <C-q>3 vBBBy:T <C-r>"<CR>gi

" C-q C-q to send word under cursor or last word
inoremap <silent> <buffer> <C-q><C-q> <Esc>:T <C-r><C-a><CR>a
nnoremap <silent> <buffer> <C-q><C-q> :T <C-r><C-a><CR>
" nnoremap <silent> <buffer> qq :T <C-r><C-a><CR>

" C-q C-w to send from the beginning of the line til cursor
inoremap <silent> <buffer> <C-q><C-w> <Esc>v0y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-w> v0y:T <C-r>"<CR>

" C-q C-e to send from cursor till EoL
inoremap <silent> <buffer> <C-q><C-e> <Esc>v$y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-e> v$y:T <C-r>"<CR>

" ||
" || Load
" ||

nnoremap <silent> <buffer> <Leader>r :T (load-file "<C-r>=expand("%")<CR>")<CR>

nnoremap <buffer> <LocalLeader>l :TREPLSendFile<CR>

" ||
" || Docs
" ||

nnoremap <silent> <buffer> <C-g><C-g> :T (clojure.repl/doc <C-r><C-w>)<CR>
nnoremap <silent> <buffer> <Leader><C-g><C-g> :T (clojure.repl/doc )<Left>

nnoremap <silent> <buffer> <C-g>s :T (clojure.repl/source <C-r><C-w>)<CR>
nnoremap <silent> <buffer> <Leader><C-g>s :T (clojure.repl/source )<Left>

" Metadata
nnoremap <silent> <buffer> <C-g>m :T (clojure.pprint/pprint (meta <C-r><C-w>))<CR>
nnoremap <silent> <buffer> <Leader><C-g>m :T (clojure.pprint/pprint (meta ))<Left><Left>

" Apropos
nnoremap <silent> <buffer> <C-g>a :T (clojure.repl/find-doc #"(?i)<C-r><C-w>")<CR>
nnoremap <silent> <buffer> <Leader><C-g>a :T (clojure.repl/find-doc #"(?i)"")<Left><Left>
" Clojuredocs is <C-g>c
" in ~/.vim/conf/_open-browser.vim/ftplugin/clojure/mappings.vim

" Javadoc
nnoremap <silent> <buffer> <C-g>j :T (clojure.java.javadoc/javadoc "<C-r><C-w>")<CR>
nnoremap <silent> <buffer> <Leader><C-g>j :T (clojure.java.javadoc/javadoc "")<Left><Left>

" ||
" || Errors
" ||

" Print stack trace
nnoremap <buffer> <LocalLeader>s :silent T (pst)<CR>
" TODO Also: *e? Possibly *1, *2, *3.

" ||
" || Repl control
" ||

" Run repl
nnoremap <buffer> <LocalLeader><LocalLeader> :silent T lein repl<CR>
