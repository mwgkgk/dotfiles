" Unused yet so far

if has('nvim')
    tnoremap <buffer> d <C-w>
else
    tnoremap <buffer> d <C-\><C-w>
endif

" Normal mode
tnoremap <Esc> <C-W>N
