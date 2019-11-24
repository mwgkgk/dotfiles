" Keep ft for new windows
function! windows#new(win_cmd)
    let l:prev_ft = &filetype
    exec a:win_cmd
    exec 'set ft=' . l:prev_ft
endfunction

function! windows#new_small_horizontal()
    call windows#new(winheight(0)/4 . 'new')
endfunction

function! windows#new_small_vertical()
    call windows#new(winwidth(0)/4 . 'vnew')
endfunction

function! windows#new_small_above_horizontal()
    call windows#new('above ' . winheight(0)/4 . 'new')
endfunction

function! windows#new_small_above_vertical()
    call windows#new('above ' . winwidth(0)/4 . 'vnew')
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
