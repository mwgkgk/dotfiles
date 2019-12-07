function! files#conf#new(pkg_name)
    let l:pkg_name_split = split(a:pkg_name, '/')

    let l:pkg_name = len(l:pkg_name_split) > 1 ?
                \ l:pkg_name_split[1] :
                \ l:pkg_name_split[0]

    let l:conf_path = '~/.vim/conf/_' . l:pkg_name . '/'
    let l:in = input('Conf: ' , l:conf_path, 'file')

    if !empty(l:in)
        call files#api#ensure_directories_exist(l:in)

        execute 'split' . l:in
    endif
endfunction
