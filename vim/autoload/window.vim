" Keep ft for new windows
function! window#new(win_cmd)
    let l:prev_ft = &filetype
    exec a:win_cmd
    exec 'set ft=' . l:prev_ft
endfunction

function! window#new_small_horizontal()
    call window#new(winheight(0)/4 . 'new')
endfunction

function! window#new_small_vertical()
    call window#new(winwidth(0)/4 . 'vnew')
endfunction

function! window#new_small_above_horizontal()
    call window#new('above ' . winheight(0)/4 . 'new')
endfunction

function! window#new_small_above_vertical()
    call window#new('above ' . winwidth(0)/4 . 'vnew')
endfunction
