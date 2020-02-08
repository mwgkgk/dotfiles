function! _vim_fugitive#commit_staged()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if !git#diff#has_staged_changes()
        echo 'No staged changes'
        return
    endif

    tab Git commit -v
endfunction

function! _vim_fugitive#stage_and_commit_current_file()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    let l:file = expand('%')

    if !filereadable(l:file)
        echo 'File not readable: ' . l:file
        return
    endif

    if git#diff#is_untracked(l:file)
        if !git#stage#file(l:file)
            " The error message is echoed from git#stage#file.
            return
        endif
    elseif !git#diff#has_changes_in_file(l:file)
        echo 'No changes in current file'
        return
    endif

    exec 'Git commit -v ' . l:file
endfunction

function! _vim_fugitive#cautious_amend()
    let l:last_commit = git#log#last_commit()

    if !git#remote#contains_head()
        Git commit --amend
    else
        echo "Can't amend: " . l:last_commit
    endif
endfunction

function! _vim_fugitive#cautious_amend_no_edit()
    let l:last_commit = git#log#last_commit()

    if !git#remote#contains_head()
        Git commit --amend --no-edit
    else
        echo "Can't amend: " . l:last_commit
    endif
endfunction
