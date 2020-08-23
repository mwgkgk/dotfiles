let g:patternjump_no_default_key_mappings = 1
let g:patternjump_patterns = {
        \ '_' : { 
        \   'nox' : {
        \     'tail' : ['^\s*.\+'],
        \     }
        \   },
        \ 'markdown' : {
        \   'nox' : {
        \     'tail' : ['^\(#\|>\)'],
        \     }
        \   },
        \ 'mj' : {
        \   'nox' : {
        \     'tail' : ['^\(#\|>\)'],
        \     }
        \   },
        \ 'conf' : {
        \   'nox' : {
        \     'head' : ['^\s*#.*'],
        \     }
        \   },
        \ 'python' : {
        \   'nox' : {
        \     'tail' : ['^\s*def.*'],
        \     }
        \   },
        \ 'html' : {
        \   'nox' : {
        \     'tail' : ['^\s*<.+>'],
        \     }
        \   },
        \ 'lisp' : {
        \   'nox' : {
        \     'head' : ['____'],
        \     }
        \   },
        \ 'jiv' : {
        \   'nox' : {
        \     'head' : ['\.\.'],
        \     }
        \   },
        \ 'zig' : {
        \   'nox' : {
        \     'tail' : ['^\(\s*\/\)\@!.\+'],
        \     }
        \   },
        \ 'go' : {
        \   'nox' : {
        \     'tail' : ['^\(\s*\/\)\@!.\+'],
        \     }
        \   },
        \ }
