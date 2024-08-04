" This gets appended to first send, but, we're currently starting the repl
" manually & passing the filename. Perhaps change later. We can load() right?
" if executable('swipl')
"   call neoterm#repl#set('swipl')
" endif

" We now use '' as standard behavior across all types
call neoterm#repl#set('')
