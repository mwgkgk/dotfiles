function! git#hardreset#current()
    let l:current_file = expand('%')

    if git#diff#has_staged_changes_in_file(l:current_file)
        echo 'There are staged changes in ' . l:current_file
        return
    endif

    call system('git checkout -- ' . l:current_file)

    silent e

    " Update signs for the current buffer:
    GitGutter

    echo 'Checkout ' . l:current_file
endfunction

function! git#hardreset#all()
    if git#diff#has_staged_changes()
        echo 'There are staged changes'
        return
    endif

    if confirm('Really hard reset everything?')
        call system('git checkout -- .')

        " Update signs for all buffers:
        GitGutterAll

        echo 'Checkout everything'
    endif
endfunction
