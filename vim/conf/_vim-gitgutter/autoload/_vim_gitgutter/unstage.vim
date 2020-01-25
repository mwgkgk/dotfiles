function! _vim_gitgutter#unstage#current()
    call system('git reset -- ' . expand('%'))

    " Update signs for the current buffer:
    GitGutter

    echo 'Unstage ' . expand('%')
endfunction

function! _vim_gitgutter#unstage#all()
    call system('git reset')

    " Update signs for all buffers:
    GitGutterAll

    echo 'Unstage all'
endfunction
