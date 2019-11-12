function! folding#next_non_blank_line_num(lnum)
    let l:line_number = a:lnum + 1

    " Fast and easy early exit
    if !empty(getline(l:line_number))
        return l:line_number
    endif

    " At this point the line is empty, which can also be the case for
    " exceeding total lines.
    let l:last_line = line('$')

    while l:line_number <= l:last_line
        let l:line_number += 1

        if !empty(getline(l:line_number))
            return l:line_number
        endif
    endwhile

    " We've exceeded last line and didn't found any non-blanks, so we return a
    " special value.
    return -1 
endfunction
