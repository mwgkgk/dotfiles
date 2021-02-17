if executable('scheme')
  call neoterm#repl#set('scheme')
elseif executable('guile')
    call neoterm#repl#set('guile')
endif
