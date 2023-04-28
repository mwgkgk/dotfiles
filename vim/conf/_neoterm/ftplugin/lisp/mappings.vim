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
" Unintern symbol under cursor
nnoremap <silent> <buffer> <C-x>u :silent T (unintern '<C-r><C-w>)<CR>
" Also mind: (f)makunbound, delete-package, make-instances-obsolete, and
" remove-method, as per https://stackoverflow.com/a/57346413/2383252
" For values:
nnoremap <silent> <buffer> <C-x>UM :silent T (makunbound '<C-r><C-w>)<CR>
" For functions and macros:
nnoremap <silent> <buffer> <C-x>UF :silent T (fmakunbound '<C-r><C-w>)<CR>
" For packages:
nnoremap <silent> <buffer> <C-x>UP :silent T (delete-package '<C-r><C-w>)<CR>

nnoremap <buffer> <LocalLeader>l :silent T (load #P"<C-r>=expand('%:p')<CR>")<CR>
" Master Leader
nnoremap <buffer> <LocalLeader><Leader> :silent T (load #P"<C-r>=expand('%:p:h')<CR>/package.lisp") (load #P"<C-r>=expand('%:p')<CR>") (in-package #:<C-r>=expand('%:t:r')<CR>) (use-package :ghost)<CR>

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)
nnoremap <buffer> <Leader>X :TREPLSendLine<CR>

" ||
" || Docs
" ||

nnoremap <buffer> <C-g><C-g> :silent T (maybe-describe "<C-r><C-w>")<CR>

nnoremap <buffer> <C-g><C-d> :silent T (describe '<C-r><C-w>)<CR>
nnoremap <buffer> <C-g><C-f> :silent T (describe #'<C-r><C-w>)<CR>
nnoremap <buffer> <C-g><C-v> :silent T (describe <C-r><C-w>)<CR>

nnoremap <buffer> <C-g>g<C-d> :silent T (inspect '<C-r><C-w>)<CR>
nnoremap <buffer> <C-g>g<C-f> :silent T (inspect #'<C-r><C-w>)<CR>
nnoremap <buffer> <C-g>g<C-v> :silent T (inspect <C-r><C-w>)<CR>

nnoremap <buffer> <C-g>t :T (type-of <C-r><C-w>)<CR>

nnoremap <buffer> <C-g>gd :T (disassemble '<C-r><C-w>)<CR>

nnoremap <buffer> <C-g>d :silent T (find-all-symbols (string-upcase "<C-r><C-w>"))<CR>
nnoremap <buffer> <C-g>D :silent T (apropos "<C-r><C-w>")<CR>

nnoremap <buffer> <C-g>a :T (apropos "")<Left><Left>

" https://github.com/tkych/quicksearch
nnoremap <buffer> <C-g>q :T (qs:? "" :du)<Left><Left><Left><Left><Left><Left>
nnoremap <buffer> <C-g>Q :silent T (qs:? "<C-r><C-w>" :du)<CR>

nnoremap <buffer> <C-g>v :silent T (documentation '<C-r><C-w> 'variable)<CR>
nnoremap <buffer> <C-g>s :silent T (documentation '<C-r><C-w> 'symbol)<CR>
nnoremap <buffer> <C-g>f :silent T (documentation '<C-r><C-w> 'function)<CR>
nnoremap <buffer> <C-g>m :silent T (documentation '<C-r><C-w> 'compiler-macro)<CR>

" ECL-specific
nnoremap <buffer> <C-g>h :silent T (help <C-r><C-w>)<CR>
nnoremap <buffer> <C-g><C-h> :silent T (help #'<C-r><C-w>)<CR>

" ||
" || Debug
" ||

nnoremap <buffer> <LocalLeader>t :silent T (trace <C-r><C-w>)<CR>
nnoremap <buffer> <LocalLeader>u :silent T (untrace <C-r><C-w>)<CR>
nnoremap <buffer> <LocalLeader>U :silent T (untrace)<CR>

" ||
" || Quicklisp
" ||

nnoremap <buffer> <C-c>gq :T (ql:quickload '(#:))<Left><Left>
nnoremap <silent> <buffer> <C-c><C-q> :T (ql:quickload '(#:<C-r><C-w>))<CR>

" ||
" || Fallbacks
" ||

" ghost-cl. Fully qualified because in-package
nnoremap <buffer> <C-c>a :T (ghost:deffallback <C-r><C-w> )<Left>
nnoremap <buffer> <LocalLeader>fa :T (ghost:deffallback <C-r><C-w> )<Left>
nnoremap <silent> <buffer> <LocalLeader>fl :T ghost:fallback-list<CR>
nnoremap <silent> <buffer> <LocalLeader>fc :T (ghost:clear-fallback-list)<CR>
nnoremap <silent> <buffer> <LocalLeader>fu :T (ghost:delete-fallback '<C-r><C-w>)<CR>
nnoremap <silent> <buffer> <LocalLeader>fd :T (ghost:drop-last-fallback)<CR>

" ||
" || Repl control
" ||

" Run repls:
nnoremap <buffer> <LocalLeader><LocalLeader> :silent T sbcl<CR>
nnoremap <buffer> <LocalLeader>[e :silent T ecl<CR>
nnoremap <buffer> <LocalLeader>[s :silent T sbcl<CR>
nnoremap <buffer> <LocalLeader>[c :silent T ccl<CR>
nnoremap <buffer> <LocalLeader>[l :silent T clasp<CR>
nnoremap <buffer> <LocalLeader>[i :silent T clisp<CR>
nnoremap <buffer> <LocalLeader>[j :silent T abcl-cp<CR>
nnoremap <buffer> <LocalLeader>[a :silent T alisp<CR>
nnoremap <buffer> <LocalLeader>[f :silent T sawfish-dev<CR>

" ||
" || ECL
" ||

" Return to som previous break level
nnoremap <buffer> <LocalLeader>Q :silent T :q<CR>

" ||
" || SBCL
" ||

" Print error condition and restart cases
nnoremap <buffer> <LocalLeader>e :silent T :error<CR>

" Use short alias because cant override abort without unlocking,
" and you want to make it be defined in bare repl because accidentally sending
nnoremap <buffer> <LocalLeader>a :silent T a<CR>
nnoremap <buffer> <Leader>a :silent T a<CR>
" Sometimes A is ambiguous
nnoremap <buffer> <LocalLeader>A :silent T abort<CR>

nnoremap <buffer> <LocalLeader>R :silent T retry<CR>
nnoremap <buffer> <LocalLeader>c :silent T continue<CR>
nnoremap <buffer> <LocalLeader>b :silent T backtrace<CR>

nnoremap <buffer> <LocalLeader>0 :silent T 0<CR>
nnoremap <buffer> <LocalLeader>1 :silent T 1<CR>
nnoremap <buffer> <LocalLeader>2 :silent T 2<CR>
nnoremap <buffer> <LocalLeader>3 :silent T 3<CR>
nnoremap <buffer> <LocalLeader>4 :silent T 4<CR>
nnoremap <buffer> <LocalLeader>5 :silent T 5<CR>
nnoremap <buffer> <LocalLeader>6 :silent T 6<CR>
nnoremap <buffer> <LocalLeader>7 :silent T 7<CR>
nnoremap <buffer> <LocalLeader>8 :silent T 8<CR>
nnoremap <buffer> <LocalLeader>9 :silent T 9<CR>

" ||
" || CCL
" ||

" List restarts
nnoremap <buffer> <LocalLeader>h :silent T :R<CR>

" ||
" || ABCL
" ||

" Reset to toplevel
nnoremap <silent> <buffer> <LocalLeader>r :T :reset<CR>

" ||
" || Package
" ||

nnoremap <buffer> <LocalLeader>pp :silent T (in-package #:common-lisp-user)<CR>
nnoremap <buffer> <LocalLeader>pf :silent T (in-package #:<C-r>=expand('%:t:r')<CR>) (use-package :ghost)<CR>
nnoremap <buffer> <LocalLeader>P :silent T *package*<CR>

" Load + in-package = w
" Reason it's <silent> is because long command requires a prompt
nnoremap <buffer> <silent> <LocalLeader>w :silent T (progn (load #P"<C-r>=expand('%:p')<CR>") (in-package #:<C-r>=expand('%:t:r')<CR>))<CR>

" Used packages
nnoremap <silent> <buffer> <LocalLeader>pu :T (package-use-list *package*)<CR>

" Inject ghost-cl tools
nnoremap <silent> <buffer> <LocalLeader>pig :T (use-package :ghost) <CR>

" ||
" || Tests
" ||

nnoremap <silent> <buffer> <Leader>r :T (ghost:run-fiveam-test-suite-for-the-current-package)<CR>
nnoremap <silent> <buffer> <Leader>R :T (5am:run-all-tests)<CR>

" ||
" || Silly
" ||

nnoremap <silent> <buffer> <LocalLeader>sr :T (1+ (random 100))<CR>
nnoremap <silent> <buffer> <LocalLeader>sd :T (list (1+ (random 6)) (1+ (random 6)))<CR>

nnoremap <silent> <buffer> <LocalLeader>sa :T (scheduling-facility:agenda)<CR>
nnoremap <silent> <buffer> <LocalLeader>sw :T (scheduling-facility:what-do)<CR>
nnoremap <silent> <buffer> <LocalLeader>spp :T (condition-system:latest-minimal-product)<CR>
nnoremap <silent> <buffer> <LocalLeader>spa :T (condition-system:latest-atomizable-product)<CR>
nnoremap <silent> <buffer> <LocalLeader>spr :T (condition-system:random-mvp)<CR>
nnoremap <silent> <buffer> <LocalLeader>spL :T (condition-system:list-products :verbose t)<CR>
nnoremap <silent> <buffer> <LocalLeader>spl :T (condition-system:list-products :verbose nil)<CR>

nnoremap <silent> <buffer> <LocalLeader>sq :T (colony:nearest-asd-quicklisp-status)<CR>
