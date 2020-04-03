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

    " Non brackets
    nmap <buffer> <C-c>" <Esc>ysie"
    nmap <buffer> <C-c>' <Esc>ysie'
    nmap <buffer> <C-c>] <Esc>ysie'
endfunction


function! _vim_surround#setup_no_sexp()
    " One word
    nmap <buffer> <C-c><C-c> <Esc>ysiw)
    nmap <buffer> <C-c>) <Esc>ysiw)

    " Non brackets
    nmap <buffer> <C-c>" <Esc>ysiW"
    nmap <buffer> <C-c>' <Esc>ysiW'
    nmap <buffer> <C-c>] <Esc>ysiW'
endfunction
