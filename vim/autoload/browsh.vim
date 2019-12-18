function! browsh#normal_mode()
    if has('nvim')
        " Close window
        tnoremap <buffer> d <C-w>

    else
        " Close window
        tnoremap <buffer> d <C-w>.
    endif

    " Exit
    tnoremap <buffer> q <C-q>

    " <Space> mappings
    tmap <buffer> <Space> <C-w>

    " Just plain old insert mode:
    tnoremap <buffer> i <C-w>:call browsh#insert_mode()<CR>

    " Open url:
    tnoremap <buffer> o <C-w>:call browsh#insert_mode()<CR><C-l>

    " New tab:
    tnoremap <buffer> O <C-w>:call browsh#insert_mode()<CR><C-t>

    " Back in history:
    tnoremap <buffer> H <BS>

    " Cycle tabs:
    tnoremap <buffer> J <C-w><C-\>
    tnoremap <buffer> K <C-w><C-\>

    " Arrows
    tnoremap <buffer> h <Left>
    tnoremap <buffer> j <Down>
    tnoremap <buffer> k <Up>
    tnoremap <buffer> l <Right>

    " Scrolling
    tnoremap <buffer> <C-d> <PageDown>
    tnoremap <buffer> <C-u> <PageUp>
    tnoremap <buffer> <C-e> <PageUp>
endfunction

function! browsh#insert_mode()
    tunmap <buffer> d
    tunmap <buffer> q
    tunmap <buffer> <Space>
    tunmap <buffer> i
    tunmap <buffer> o
    tunmap <buffer> O
    tunmap <buffer> H
    tunmap <buffer> J
    tunmap <buffer> K

    " Arrows
    tunmap <buffer> h
    tunmap <buffer> j
    tunmap <buffer> k
    tunmap <buffer> l

    " Scrolling
    tunmap <buffer> <C-d>
    tunmap <buffer> <C-u>
    tunmap <buffer> <C-e>

    " Exit
    tnoremap <buffer> <Esc> <C-w>:call browsh#normal_mode()<CR>

    " Upon confirming url, back to normal
    tnoremap <buffer> <CR> <CR><C-w>:call browsh#normal_mode()<CR>
endfunction
