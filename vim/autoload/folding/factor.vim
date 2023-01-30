function! folding#factor#get_fold_level(lnum)
    let l:current_line_contents = getline(a:lnum)

    if l:current_line_contents =~? '^/\*'
        return 'a1'
    endif

    if l:current_line_contents =~? '^\*/'
        return 's1'
    endif

    return '='
endfunction
