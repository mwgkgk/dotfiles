" Sat Aug 27 04:11:02 UTC 2022

let g:neoterm_default_mod = 'below'
let g:neoterm_autoscroll = 1

" This thing wants g:neoterm_repl_command as a list.
" We can define it for everything and then try it again.
" But I barely use this thing to begin with.
" let g:neoterm_direct_open_repl = 1

if has ('win32')
    let g:neoterm_eof = "\r"
endif
