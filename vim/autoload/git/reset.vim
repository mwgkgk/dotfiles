function! git#reset#current()
    let l:current_file = expand('%')

    if !git#diff#has_staged_changes_in_file(l:current_file)
        echo 'No staged changes in ' . l:current_file
        return
    endif

    call system('git reset -- ' . l:current_file)

    " Update signs for the current buffer:
    GitGutter

    echo 'Unstage ' . l:current_file
endfunction

function! git#reset#all()
    if !git#diff#has_staged_changes()
        echo 'No staged changes'
        return
    endif

    call system('git reset')

    " Update signs for all buffers:
    GitGutterAll

    echo 'Unstage all'
endfunction


function! git#reset#back()
    let l:last_commit = git#log#last_commit()

    if !git#remote#contains_head()
        call system('git reset HEAD~1')

        " Update signs for all buffers:
        GitGutterAll

        echo 'Undo ' . l:last_commit
    else
        echo "Can't undo: " . l:last_commit
    endif
endfunction
