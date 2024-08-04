" Reason its disabled is cause send is doing some weird shit in specifically
" Forth + neoterm#repl#set.
" Manually start repl before sending as a workaround.
" if executable('gf')
"   call neoterm#repl#set('gf')
" endif

" Heh now we just use '' as standard behavior for all types so nvm
call neoterm#repl#set('')
