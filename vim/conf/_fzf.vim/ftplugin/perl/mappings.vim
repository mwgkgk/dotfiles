" Subroutines
nnoremap <buffer> S :FzfBLines ^sub <CR>

" use, my, our
nnoremap <silent> <buffer> su :FzfBLines ^use<CR>
nnoremap <silent> <buffer> sy :FzfBLines ^\s*my<CR>
nnoremap <silent> <buffer> sY :FzfBLines ^\s*our<CR>

" $, %, @
nnoremap <silent> <buffer> s$ :FzfBLines \$\S\+<CR>
nnoremap <silent> <buffer> s% :FzfBLines %\S\+<CR>
nnoremap <silent> <buffer> s@ :FzfBLines @\S\+<CR>
