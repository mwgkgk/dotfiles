" Keep ft for new windows
function! windows#new(win_cmd)
    let l:prev_ft = &filetype
    exec a:win_cmd
    exec 'set ft=' . l:prev_ft
endfunction

" From suckless.vim:
function! windows#move(direction)
    let winnr = winnr()
    let bufnr = bufnr('%')

    if a:direction ==# 'j'  " move window to the previous row
        wincmd j
        if winnr() != winnr
            "exe 'normal <C-W><C-X>'
            wincmd k
            wincmd x
            wincmd j
        endif

    elseif a:direction ==# 'k'  " move window to the next row
        wincmd k
        if winnr() != winnr
            wincmd x
        endif

    elseif 'hl' =~# a:direction  " move window to the previous/next column
        exe 'wincmd ' . a:direction
        let newwinnr = winnr()
        if newwinnr == winnr
            " move window to a new column
            exe 'wincmd ' . toupper(a:direction)
        else
            " move window to an existing column
            wincmd p
            wincmd c
            " if t:windowMode == "S"
            "   res " maximize window height
            " endif
            exe newwinnr . 'wincmd w'
            wincmd n
            " if t:windowMode == "S"
            "   res " maximize window height
            " endif
            exe 'b' . bufnr
        endif
    endif
endfunction
