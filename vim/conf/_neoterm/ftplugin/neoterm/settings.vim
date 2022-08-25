if !has('nvim')
    " Enter insert mode upon leaving:
    autocmd plugs WinLeave <buffer> silent! normal A
endif

if has ("win32")
    let g:neoterm_eof = "\r"
endif

let g:neoterm_direct_open_repl = 1
