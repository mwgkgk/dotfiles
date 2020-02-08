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
    return system#success('git add ' . a:file)
endfunction
