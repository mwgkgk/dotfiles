" This function is intended for interactive use
function! git#stage#interactively(file)
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

     if git#stage#file(a:file)
         " Update signs for the current buffer:
         GitGutter

         echo 'Stage ' . a:file
     endif
endfunction

" This function is intended for programmatic use
function! git#stage#file(file)
    let l:res = system('git add ' . a:file)

    if v:shell_error
        " This isn't an echoerr because we want to handle the return value
        " graciously.
        echom l:res
    endif

    " If we used the value without negating it, the function would be
    " called git#stage#file_was_unsuccessful
    return !v:shell_error
endfunction
