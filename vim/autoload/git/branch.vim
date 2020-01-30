function! git#branch#checkout(dirty_name)
    let l:branch = substitute(a:dirty_name,'^\s\+\*\?\s\?', '', 'g')

    call system('git checkout ' . l:branch)

    return v:shell_error
endfunction
