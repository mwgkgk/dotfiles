function! _vim_surround#setup()
    if exists('b:is_sexp_buffer')
        call _vim_surround#setup_sexp()
    else
        call _vim_surround#setup_no_sexp()
    endif
endfunction

" Requires vim-sexp for inner-element
function! _vim_surround#setup_sexp()
    " One word
    nmap <buffer> <C-c><C-c> <Esc>ysie)
    nmap <buffer> <C-c>) <Esc>ysie)

    " Two words (doesn't work with inner-element from vim-sexp)
    nmap <buffer> <C-c>l ys3iw)
    " Not working
    " nmap <buffer> <C-c>h ys2b)

    " Non brackets
    nmap <buffer> <C-c>" <Esc>ysie"
    nmap <buffer> <C-c>' <Esc>ysie'
    nmap <buffer> <C-c>] <Esc>ysie'
endfunction


function! _vim_surround#setup_no_sexp()
    " One word
    nmap <buffer> <C-c><C-c> <Esc>ysiw)
    nmap <buffer> <C-c>) <Esc>ysiw)

    " Two words
    nmap <buffer> <C-c>l ys2iw)
    " Not working
    " nmap <buffer> <C-c>h ys2b)

    " Non brackets
    nmap <buffer> <C-c>" <Esc>ysiW"
    nmap <buffer> <C-c>' <Esc>ysiW'
    nmap <buffer> <C-c>] <Esc>ysiW'
endfunction
