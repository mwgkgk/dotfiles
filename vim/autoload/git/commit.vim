function! git#commit#with_message(mes)
    if len(a:mes)
        let l:res = system('git commit -m "' . a:mes . '"')

        if v:shell_error
            " This isn't an echoerr because we want to handle the return value
            " graciously.
            echom l:res
        endif

        " If we used the value without negating it, the function would be
        " called git#commit#with_message_was_unsuccessful
        return !v:shell_error
    else
        " If we used 1 here, the function would be called
        " git#commit#with_message_was_unsuccessful
        return 0
    endif
endfunction

function! git#commit#flatten_message(mes)
    " Remove leading whitespace
    let l:mes = substitute(a:mes, '^\s\+', '', 'g')
    " Remove newlines that are optionally followed by whitespace
    let l:mes = substitute(l:mes, '\n\+\s*', ' ', 'g')
    " Escape quotes
    let l:mes = substitute(l:mes, '"', '\\"', 'g')

    return l:mes
endfunction

function! git#commit#add_untracked_file(fpath)
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if !git#diff#is_untracked(a:fpath)
        echo 'File is tracked by git'
        return
    endif

    call system('git add ' . a:fpath)

    if git#commit#with_message('Add ' . a:fpath)
        echo 'Commit ' . git#log#last_commit()
    endif
endfunction
