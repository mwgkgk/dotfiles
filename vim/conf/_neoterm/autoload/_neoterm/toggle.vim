" Sat Aug 27 04:18:10 UTC 2022

function! _neoterm#toggle#neoterm_direct_open_repl()
    if(g:neoterm_direct_open_repl == 1)
        let g:neoterm_direct_open_repl = 0
    else
        let g:neoterm_direct_open_repl = 1
    endif
    echo 'g:neoterm_direct_open_repl = ' . g:neoterm_direct_open_repl
endfunction
