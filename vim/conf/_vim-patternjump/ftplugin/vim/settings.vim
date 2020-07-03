if bufname() =~# 'plugs.vim$'
    let g:patternjump_patterns['vim'] = {
                \   'nox' : {
                \     'tail' : ['^Plug.*'],
                \     }
                \   }
else
    let g:patternjump_patterns['vim'] = {
                \   'nox' : {
                \     'tail' : ['^\s*"\@!.\+'],
                \     }
                \   }
endif
