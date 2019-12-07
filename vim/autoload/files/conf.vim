function! files#conf#new(pkg_name)
    let l:conf_path = '~/.vim/conf/_' . a:pkg_name . '/'
    let l:in = input('Create: ' , l:conf_path, 'file')

    if !empty(l:in)
        call files#api#ensure_directories_exist(l:in)

        execute 'split' . l:in
    endif
endfunction
