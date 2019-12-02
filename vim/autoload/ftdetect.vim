function! ftdetect#detect_empty()
    if getline(1) =~# '#!\/bin\/dash'
        setfiletype sh
    elsei getline(1) =~# '#!\/usr\/bin\/sbcl --script'
        setfiletype lisp
    endif
endfunction
