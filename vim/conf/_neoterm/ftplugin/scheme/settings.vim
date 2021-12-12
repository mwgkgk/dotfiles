if executable('bigloo')
    call neoterm#repl#set('bigloo')
elseif executable('gosh')
    call neoterm#repl#set('gosh')
elseif executable('scheme')
    call neoterm#repl#set('scheme')
elseif executable('guile')
    call neoterm#repl#set('guile')
endif
