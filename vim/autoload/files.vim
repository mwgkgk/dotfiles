function! files#prev_by_date()
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

function! files#next_by_date()
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

function! files#first_by_date()
    let l:fname = system('first-by-date ' . expand('%'))
    if empty(l:fname)
        echo 'No first file.'
    else
        execute 'edit ' . l:fname
    endif
endfunction

function! files#last_by_date()
    let l:fname = system('last-by-date ' . expand('%'))
    if empty(l:fname)
        echo 'No last file.'
    else
        execute 'edit ' . l:fname
    endif
endfunction

function! files#filepath_from_date(root, filename, date)
    let l:year = strftime('%Y', a:date)
    let l:month = tolower(strftime('%b', a:date))
    let l:day = strftime('%d', a:date)

    return expand(a:root) . l:year . '/' . l:month . '/' . l:day . '/' .
                \ a:filename
endfunction

function! files#todays_file(root, filename, skeleton)
    let l:fname = files#filepath_from_date(a:root, a:filename, localtime())

    execute 'edit' . l:fname

    silent! execute '!mkdir -p %:h'

    if !filereadable(l:fname)
        execute '%!cat ' . a:skeleton

        write
        edit
    endif

    $
endfunction
