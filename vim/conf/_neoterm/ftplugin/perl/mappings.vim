" ||
" || Run
" ||

nnoremap <silent> <buffer> <Leader>r :T perl <C-r>=expand('%')<CR><CR>
nnoremap <silent> <buffer> <Leader>R :T perl -MO=Deparse <C-r>=expand('%')<CR><CR>
nnoremap <silent> <buffer> <LocalLeader>r :T prove -lr t/<CR>

nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T re.pl<CR>

" ||
" || Send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <Space>X :TREPLSendFile<CR>

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
" || Insert
" ||

nmap <silent> <buffer> <C-c><C-c> ysiW)
