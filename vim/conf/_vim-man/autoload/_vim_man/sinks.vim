function! _vim_man#sinks#man_from_apropos(line)
    let l:brace_idx = stridx(a:line, '(')

    let l:page_name = strpart(a:line, 0, l:brace_idx)
    let l:section_number = matchstr(a:line, '\d', l:brace_idx)

    exec 'Man' l:section_number l:page_name
endfunction
