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

    call _neoterm#open#jump(a:above, a:vert)

    let g:neoterm_size = l:stored_size
endfunction

" We want autojump+autoinsert to be disabled by default, so that the
" send-to-repl commands do not steal window focus. We do want to jump when
" explicitely opening a terminal split.
function! _neoterm#open#jump(above, vert)
    let l:stored_autojump = g:neoterm_autojump
    let l:stored_autoinsert = g:neoterm_autoinsert

    let g:neoterm_autojump = 1
    let g:neoterm_autoinsert = 1

    exec join([a:above, a:vert, 'Tnew'])

    let g:neoterm_autojump = l:stored_autojump
    let g:neoterm_autoinsert = l:stored_autoinsert
endfunction
