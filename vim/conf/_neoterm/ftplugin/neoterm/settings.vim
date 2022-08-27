if !has('nvim')
    " Enter insert mode upon leaving:
    autocmd plugs WinLeave <buffer> silent! normal A
endif
