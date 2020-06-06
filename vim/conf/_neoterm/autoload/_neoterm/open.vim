" There is no ++curwin for :Tnew, however it's the default behavior when
" g:neoterm_default_mod is unset.
function! _neoterm#open#here()
    let l:stored_mod = g:neoterm_default_mod
    let g:neoterm_default_mod = ''
    :Tnew
    let g:neoterm_default_mod = l:stored_mod
endfunction

" Arguments a:above and a:vert are strings '' or 'above' or 'vert'
" respectively. We can override the 'above' with 'below' without compromising
" the behavior, to work around g:neoterm_default_mod being 'above', which is
" useful to have for one-keypress REPL open & dispatch.
function! _neoterm#open#small(above, vert)
    let l:stored_size = g:neoterm_size
    if empty(a:vert)
        let g:neoterm_size = winheight(0)/4
    else
        let g:neoterm_size = winwidth(0)/4
    endif

    exec join([a:above, a:vert, 'Tnew'])

    let g:neoterm_size = l:stored_size
endfunction
