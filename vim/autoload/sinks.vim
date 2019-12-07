function! sinks#man_from_apropos(line)
    let l:page_name = matchstr(a:line, '^\S\+')
    let l:section_number = matchstr(a:line, '\d', len(l:page_name))

    exec 'Man' l:section_number l:page_name
endfunction
