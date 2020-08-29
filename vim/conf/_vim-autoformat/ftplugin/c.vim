" False is 0, true is 1
if expand('%:p') !~ '.burrow'
    autocmd BufWritePre <buffer> Autoformat
endif
