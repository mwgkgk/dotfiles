" This function returns 0 on unsuccessful calls, and prints the output.
" Vim treats 0 as false, so this is usable as `if system#success(something)`.
function! system#success(cmd)
    let l:res = system(a:cmd)

    if v:shell_error
        " This isn't an echoerr because we want to handle the return value
        " graciously.
        echom l:res
    endif

    " If we used the value without negating it, the function would be
    " called system#failure.
    return !v:shell_error
endfunction
