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

function! _vim_fugitive#stage_and_commit_everything()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if git#diff#has_staged_changes()
        echo 'There are staged changes'
        return
    endif

    if !system#success('git add -A')
        " The error message is echoed from system#success.
        return
    endif

    tab Git commit -v
endfunction

function! _vim_fugitive#rename_last_commit()
    if git#remote#contains_head()
        echo "Can't amend: " . git#log#last_commit()
        return
    endif

    if git#diff#has_staged_changes()
        echo 'There are staged changes'
        return
    endif

    Git commit --amend
endfunction

function! _vim_fugitive#rename_slurp_last_commit()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if git#remote#contains_head()
        echo "Can't amend: " . git#log#last_commit()
        return
    endif

    Git commit --amend
endfunction
