function! helpers#pluralize(word, count)
    let l:plural = ""
    if a:count > 1
        let l:plural = "s"
    endif
    return a:count . " " .  a:word . l:plural
endfunction
