function! files_by_date#prev()
    let l:fname = system('prev-by-date ' . expand('%'))
    execute 'edit ' . l:fname
endfunction

function! files_by_date#next()
    let l:fname = system('next-by-date ' . expand('%'))
    execute 'edit ' . l:fname
endfunction

nnoremap <Leader>dp :call files_by_date#prev()<CR>
nnoremap <Leader>dn :call files_by_date#next()<CR>
