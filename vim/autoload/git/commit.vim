function! git#commit#with_message(mes)
    if len(a:mes)
        return system#success('git commit -m "' . a:mes . '"')
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
    " Remove trailing whitespace
    let l:mes = substitute(a:mes, '\s\+$', '', 'g')
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

    if !git#stage#file(a:fpath)
        " The error message is echoed from git#stage#file.
        return
    endif

    if git#commit#with_message('Add ' . a:fpath)
        echo 'Commit ' . git#log#last_commit()
    endif
endfunction

function! git#commit#slurp_staged()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if !git#diff#has_staged_changes()
        echo 'No staged changes'
        return
    endif

    if git#remote#contains_head()
        echo "Can't amend: " . git#log#last_commit()
        return
    endif

    if system#success('git commit --amend --no-edit')
        echo 'Modify ' . git#log#last_commit()
    endif
endfunction
