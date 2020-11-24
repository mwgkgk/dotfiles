function! _neoterm#prolog_repl#join(dir, file)
    if exists('g:_neoterm#prolog_repl#active') && g:_neoterm#prolog_repl#active
        silent! execute ":T ['" . a:file . "']."
    else
        call _neoterm#open#small('above', '')
        silent! execute ':T cd ' . a:dir . ' ; and swipl -s ' . a:file
        let g:_neoterm#prolog_repl#active = 1
    endif
endfunction

function! _neoterm#prolog_repl#quit()
    " TODO Exit repl, exit shell
    silent! execute ':T '
    let g:_neoterm#prolog_repl#active = 0
endfunction

function! _neoterm#prolog_repl#send(string)
    if exists('g:_neoterm#prolog_repl#active') && g:_neoterm#prolog_repl#active
        silent! execute ':silent T ' . a:string
    else
        echo 'No repl attached.'
        return 1
    endif
endfunction
