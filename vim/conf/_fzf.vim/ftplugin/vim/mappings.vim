if bufname() =~# 'plugs.vim$'
    nnoremap <buffer> S :FzfBLines ^Plug <CR>
else
    nnoremap <buffer> S :FzfBLines ^" <CR>
endif
