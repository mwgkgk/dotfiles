if !has('nvim')
    " Enter insert mode upon leaving:
    autocmd plugs WinLeave <buffer> silent! normal A
endif

if has ("win32")
    let g:neoterm_eof = "\r"
endif
