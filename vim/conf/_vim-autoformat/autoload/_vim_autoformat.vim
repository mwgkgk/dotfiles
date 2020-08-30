function! _vim_autoformat#fmt_on_write()
    if g:_vim_autoformat#enabled == 1
        Autoformat
    endif
endfunction

function! _vim_autoformat#toggle()
    if(g:_vim_autoformat#enabled == 1)
        let g:_vim_autoformat#enabled = 0
    else
        let g:_vim_autoformat#enabled = 1
    endif
endfunction
