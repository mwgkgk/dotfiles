let g:vlime_cl_impl = 'sbcl'
" let g:vlime_cl_impl = 'ccl'

" eeh this doesn't work
" https://susam.in/blog/lisp-in-vim-with-slimv-or-vlime/#use-vlime-with-clisp
" let g:vlime_cl_impl = 'clisp'
" function! VlimeBuildServerCommandFor_clisp(vlime_loader, vlime_eval)
"     return ['clisp', '-i', a:vlime_loader,
"                 \ '-x', a:vlime_eval,
"                 \ '-repl']
" endfunction

let g:vlime_window_settings = {
        \ 'repl': {
            \ 'pos': 'topleft',
            \ 'size': 17,
        \ },
        \ 'sldb': {
            \ 'pos' : 'belowright',
            \ 'size': 20,
        \ },
        \ 'arglist': {
            \ 'pos' : 'belowright',
            \ 'size': 2,
        \ },
        \ 'preview': {
            \ 'pos' : 'botright',
        \ },
    \ }

" let g:vlime_enable_autodoc = v:true

" This has all the downsides of C-w / Space :terminal problems
" let g:vlime_cl_use_terminal = v:true
