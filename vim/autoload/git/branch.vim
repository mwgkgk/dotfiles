function! git#branch#checkout(dirty_name)
    let l:branch = substitute(a:dirty_name,'^\s\+\*\?\s\?', '', 'g')

    return system('git checkout ' . l:branch)
endfunction
