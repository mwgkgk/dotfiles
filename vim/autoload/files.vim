function! files#edit_multiple(...)
    if(a:0 == 0)
        e
    else
        let file = a:1
        execute 'e ' . file

        for file in a:000[1:]
            execute 'sp ' . file
        endfor
    endif
endfunction

function! files#split_multiple(...)
    if(a:0 == 0)
        sp
    else
        for file in a:000
            execute 'sp ' . file
        endfor
    endif
endfunction

function! files#vsplit_multiple(...)
    if(a:0 == 0)
        vs
    else
        for file in a:000
            execute 'vs ' . file
        endfor
    endif
endfunction

function! files#force_split_multiple(...)
    if(a:0 == 0)
        sp
    else
        for file in a:000
            execute 'w ' . file
            execute 'sp ' . file
        endfor
    endif
endfunction
