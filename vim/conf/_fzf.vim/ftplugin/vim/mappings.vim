" TODO Perhaps move to colony, and qualify full names. Seems premature
if bufname() =~# 'plugs.vim$'
    nnoremap <buffer> S :FzfBLines ^.*Plug <CR>
elseif bufname() =~# 'colors.vim$'
    nnoremap <buffer> S :FzfBLines ^.*let s:static_colo = <CR>
else
    nnoremap <buffer> S :FzfBLines ^" <CR>
endif
