" ||
" || Run
" ||

nnoremap <silent> <buffer> <Leader>r :T perl <C-r>=expand('%')<CR><CR>
nnoremap <silent> <buffer> <Leader><C-r> :T morbo -v <C-r>=expand('%')<CR><CR>
nnoremap <silent> <buffer> <Leader>R :T perl -MO=Deparse <C-r>=expand('%')<CR><CR>
nnoremap <silent> <buffer> <LocalLeader>R :T prove -lr t/<CR>
nnoremap <silent> <buffer> <LocalLeader>r :T shortprove -lr t/<CR>
nnoremap <silent> <buffer> <LocalLeader>gr :T prove .<CR>
nnoremap <silent> <buffer> <LocalLeader><Leader>r :T perl <C-r>=expand('%:t')<CR><CR>
nnoremap <silent> <buffer> <LocalLeader><Leader>R :T perl -d <C-r>=expand('%:t')<CR><CR>

nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T re.pl<CR>

" ||
" || Send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" Uses textobj-function-perl to send surrounding function definition
nmap <buffer> <Leader>x vaf<Plug>(neoterm-repl-send)
" for visual, same as X
xmap <buffer> <Leader>x <Plug>(neoterm-repl-send)

" Uses textobj-function-perl to send function contents
nmap <buffer> <Leader>X vif<Plug>(neoterm-repl-send)

" Send atom under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-x><C-x> :silent T <C-r><C-a><CR>

" Require file
nnoremap <buffer> <LocalLeader>L :silent T require "<C-r>=expand('%:p')<CR>"<CR>
" Send file
nnoremap <buffer> <LocalLeader>l :silent TREPLSendFile<CR>

" Send motion
" xmap is for visual, and duplicates :TREPLSendSelection.
nmap <buffer> <C-q> <Plug>(neoterm-repl-send)
xmap <buffer> <C-q> <Plug>(neoterm-repl-send)

" Send 2 words, send 3 words
inoremap <silent> <buffer> <C-q>2 <Esc>vBBy:T <C-r>"<CR>gi
inoremap <silent> <buffer> <C-q>3 vBBBy:T <C-r>"<CR>gi

" C-q C-q to send word under cursor or last word
inoremap <silent> <buffer> <C-q><C-q> <Esc>:T <C-r><C-a><CR>a
nnoremap <silent> <buffer> <C-q><C-q> :T <C-r><C-a><CR>

" C-q C-w to send from the beginning of the line til cursor
inoremap <silent> <buffer> <C-q><C-w> <Esc>v0y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-w> v0y:T <C-r>"<CR>

" C-q C-e to send from cursor till EoL
inoremap <silent> <buffer> <C-q><C-e> <Esc>v$y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-e> v$y:T <C-r>"<CR>

" ||
" || Debugger
" ||

nnoremap <silent> <buffer> <LocalLeader>n :T n<CR>
nnoremap <silent> <buffer> <LocalLeader>s :T s<CR>

" ||
" || Docs
" ||

nnoremap <silent> <buffer> <C-g>S :T say <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>r :T ref <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>s :T scalar <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>d :T defined <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>f :T Class::Inspector->methods(ref <C-r><C-a>, 'full', 'public');<CR>
nnoremap <silent> <buffer> <C-g>F :T Class::Inspector->methods(ref <C-r><C-a>[0], 'full', 'public');<CR>

" ||
" || Wrap
" ||

nmap <silent> <buffer> <C-c><C-c> ysiW)

" ||
" || Insert
" ||

inoremap <buffer> <S-tab> ()<Left>
