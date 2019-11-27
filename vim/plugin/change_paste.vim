function! change_paste#change(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction
