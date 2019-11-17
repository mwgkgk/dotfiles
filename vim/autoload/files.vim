function! files#prev_by_date()
    let l:fname = system('prev-by-date ' . expand('%'))
    execute 'edit ' . l:fname
endfunction

function! files#next_by_date()
    let l:fname = system('next-by-date ' . expand('%'))
    execute 'edit ' . l:fname
endfunction
