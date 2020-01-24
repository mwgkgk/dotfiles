function! dirs#ensure_directories_exist(filepath)
    if isdirectory(a:filepath)
        " Both /usr/bin and /usr/bin/ are isdirectory().
        " fnamemodify(':h') treats trailing slash as significant, however it
        " doesn't matter in this case.
        call system('mkdir -p ' . fnamemodify(a:filepath, ':p'))
    else
        call system('mkdir -p ' . fnamemodify(a:filepath, ':p:h'))
    endif
endfunction
