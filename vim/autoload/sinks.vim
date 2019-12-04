function! sinks#man_from_apropos(line)
    exec 'Man ' . matchstr(a:line, '^\w\+')
endfunction
