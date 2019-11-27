" From suckless.vim:

function! window#suckless#move(direction)
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

function! window#suckless#move_to_prev_tab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() != 1
    close!
    if l:tab_nr == tabpagenr('$')
      tabprev
    endif
    sp
  else
    close!
    exe '0tabnew'
  endif
  "opening current buffer in new window
  exe 'b'.l:cur_buf
endfunc

function! window#suckless#move_to_next_tab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() < tab_nr
    close!
    if l:tab_nr == tabpagenr('$')
      tabnext
    endif
    sp
  else
    close!
    tabnew
  endif
  "opening current buffer in new window
  exe 'b'.l:cur_buf
endfunc
