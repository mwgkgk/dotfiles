" TODO factor-vm is an Arch-ism
if executable('factor-vm')
  call neoterm#repl#set('factor-vm -run=listener')

  " This baby boy is a little slower to start
  " call neoterm#repl#set('factor-vm -run=readline-listener')
endif
