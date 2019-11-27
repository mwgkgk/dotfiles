function! files#by_date#prev()
    let l:curr_fname = expand('%')
    if filereadable(l:curr_fname)
        let l:fname = system('prev-by-date ' . l:curr_fname)
        if empty(l:fname)
            echo 'No previous file.'
        else
            execute 'edit ' . l:fname
        endif
    else
        echo 'Current file has no modified date yet.'
    endif
endfunction

function! files#by_date#next()
    let l:curr_fname = expand('%')
    if filereadable(l:curr_fname)
        let l:fname = system('next-by-date ' . l:curr_fname)
        if empty(l:fname)
            echo 'No next file.'
        else
            execute 'edit ' . l:fname
        endif
    else
        echo 'Current file has no modified date yet.'
    endif
endfunction

function! files#by_date#first()
    let l:fname = system('first-by-date ' . expand('%'))
    if empty(l:fname)
        echo 'No first file.'
    else
        execute 'edit ' . l:fname
    endif
endfunction

function! files#by_date#last()
    let l:fname = system('last-by-date ' . expand('%'))
    if empty(l:fname)
        echo 'No last file.'
    else
        execute 'edit ' . l:fname
    endif
endfunction
