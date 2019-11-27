function! files#from_date#filepath_from_date(root, filename, date) abort
    let l:utc_date = date#seconds_to_utc(a:date)

    let l:year = strftime('%Y', l:utc_date)
    let l:month = tolower(strftime('%b', l:utc_date))
    let l:day = strftime('%d', l:utc_date)

    return expand(a:root) . l:year . '/' . l:month . '/' . l:day . '/' .
                \ a:filename
endfunction

function! files#from_date#todays_file(root, filename, ...) abort
    let l:fname = files#from_date#filepath_from_date(a:root, a:filename,
                \ localtime())

    call system('mkdir -p ' . fnamemodify(l:fname, ':p:h'))

    execute 'edit' . l:fname

    " a:1 is the optional file template
    if a:0 >= 1
        if !filereadable(l:fname)
            execute '%!cat ' . a:1

            write
            edit
        endif
    endif

    $
endfunction
