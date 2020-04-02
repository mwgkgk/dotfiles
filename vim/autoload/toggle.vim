function! toggle#background()
    if(&background ==# 'dark')
        set background=light
    else
        set background=dark
    endif
endfunction

function! toggle#number()
    if(&number == 1)
        set nonumber
    else
        set number
    endif
    echo (&number == 1 ? 'number' : 'nonumber')
endfunction

function! toggle#rnu()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
    echo (&relativenumber == 1 ? 'rnu' : 'nornu')
endfunction

function! toggle#hardwrap()
    if(&textwidth == 79)
        set textwidth=0
    else
        set textwidth=79
    endif
    echo 'tw = ' . &textwidth
endfunc

function! toggle#diff()
    if(&diff)
      diffoff
    else
      diffthis
    endif
    echo 'diff ' . (&diff == 1 ? 'on' : 'off')
endfunc

function! toggle#verbose()
    if(&verbose == 0)
        set verbose=1
    else
        set verbose=0
    endif
    echo 'verbose = ' . &verbose
endfunc

function! toggle#spelling()
    setlocal spell!
    if &spell
        set complete+=kspell
        echo 'spellcheck on'
    else
        set complete-=kspell
        echo 'spellcheck off'
    endif
endfunction
