function! git#commit#with_message(mes)
    if len(a:mes)
        call system('git commit -m "' . a:mes . '"')

        " If we used the value without negating it, the function would be
        " called git#commit#with_message_was_unsuccessful
        return !v:shell_error
    else
        " If we used 1 here, the function would be called
        " git#commit#with_message_was_unsuccessful
        return 0
    endif
endfunction
