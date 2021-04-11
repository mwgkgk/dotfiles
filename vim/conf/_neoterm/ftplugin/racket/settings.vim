" Even though it's set by default, it's still good to ftplugin it because
" other ftplugins seem to fuck with it.
if executable('racket')
  call neoterm#repl#set('racket')
endif
