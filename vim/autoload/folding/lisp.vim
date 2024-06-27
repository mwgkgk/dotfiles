" The idea is as follows:
" - ^#+nil starts foldlevel 1
" - all the lines following the #+nil until the next blank line that is
"   followed by non-empty indent 0, are foldlevel 1, including '(progn' line
"   that immediately follows.
" - everything else is foldlevel 0

function! folding#lisp#get_fold_level(lnum)
    let l:current_line_contents = getline(a:lnum)

    if l:current_line_contents =~? '{{{$'
        let b:in_marker_fold = v:true
        return '>2'
    endif

    if l:current_line_contents =~? '}}}$'
        let b:in_marker_fold = v:false
        return '<2'
    endif

    if empty(l:current_line_contents)
        let l:next_line_number = folding#next_non_blank_line_num(a:lnum)

        " We're short circuiting the -1 check for the sake of hot path.
        " getline() is safe to use on non-existent lines and returns ''.
        if getline(l:next_line_number) =~? '^\S' || l:next_line_number == -1
            if b:in_marker_fold
                return '2'
            endif
            return '0'
        end

        return '-1'
    endif

    if l:current_line_contents =~? '^#+nil' ||
                \ l:current_line_contents =~? '^#+#:'
        return '>1'
    endif

    if l:current_line_contents =~? '^\S'
        if getline(a:lnum - 1) =~? '^#+nil' ||
                    \ getline(a:lnum - 1) =~? '^#+#:'
            return '1'
        endif

        if b:in_marker_fold
            return '2'
        endif
        return '0'
    endif

    return '='
endfunction
