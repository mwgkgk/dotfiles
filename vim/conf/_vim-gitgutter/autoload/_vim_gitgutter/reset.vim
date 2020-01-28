" These use system() and not :Git because fugitive's async commands don't
" compose.

function! _vim_gitgutter#reset#current()
    call system('git reset -- ' . expand('%'))

    " Update signs for the current buffer:
    GitGutter

    echo 'Unstage ' . expand('%')
endfunction

function! _vim_gitgutter#reset#all()
    call system('git reset')

    " Update signs for all buffers:
    GitGutterAll

    echo 'Unstage all'
endfunction


function! _vim_gitgutter#reset#back()
    let l:last_commit = systemlist('git log --oneline -n 1')[0]

    if !git#remote#contains_head()
        call system('git reset HEAD~1')

        " Update signs for all buffers:
        GitGutterAll

        echo 'Undo ' . l:last_commit
    else
        echo "Can't undo: " . l:last_commit
    endif
endfunction
