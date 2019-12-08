" Restore man windows saved in session.
function! _vim_man#ftdetect#set_man_status()
    let l:bufname = bufname()

    if empty(&filetype) && !filereadable(bufname)
        setfiletype man

        " Cannot :exec Man from here, so we delay it
        autocmd plugs BufEnter,BufLeave <buffer> call _vim_man#ftdetect#restore_man_window()
    endif
endfunction

function! _vim_man#ftdetect#restore_man_window()
    if empty(getline(1))
        call _vim_man#sinks#man_from_apropos(bufname())
    endif
endfunction
