" ||
" || REPL control
" ||

" Open repl with file
nnoremap <buffer> <LocalLeader>r :call _neoterm#prolog_repl#join("<C-r>=expand('%:h')<CR>", "<C-r>=expand('%:t')<CR>")<CR>

nnoremap <buffer> <LocalLeader>Q :call _neoterm#prolog_repl#quit()<CR>

nnoremap <buffer> <Leader>r :call _neoterm#prolog_repl#send('make, run_tests.')<CR>

" TODO nnoremap <buffer> <silent> X 0f<Space>v$:TREPLSendSelection<CR>
" Problem lies in it only being usable on comment lines.

" UPD: nevermind it does support sending escapes, look it up.
" Unfortunately this includes a caret return, and Neoterm doesn't support
" otherwise. Hence this is only superficially useful in enumerating results.
" Fixed: set_prolog_flag(tty_control, false).
nnoremap <buffer> <LocalLeader><Leader> :silent T ;<CR>

" TODO use tab-wide t:termbufnr, or scout for neoterm api to get bufnr
" nnoremap <buffer> <LocalLeader><Leader> :call term_sendkeys("n")<CR>

nnoremap <buffer> <LocalLeader>. :silent T .<CR>

nnoremap <buffer> <LocalLeader>n :silent T n<CR>
nnoremap <buffer> <LocalLeader>q :silent T q<CR>

" ||
" || Debugger
" ||

nnoremap <buffer> <LocalLeader>d :silent T trace.<CR>
nnoremap <buffer> <LocalLeader>D :silent T nodebug.<CR>

nnoremap <buffer> <LocalLeader>h :silent T h<CR>
nnoremap <buffer> <LocalLeader>c :silent T c<CR>
nnoremap <buffer> <LocalLeader>a :silent T a<CR>

nnoremap <buffer> <LocalLeader>u :silent T u<CR>
nnoremap <buffer> <LocalLeader>l :silent T l<CR>
nnoremap <buffer> <LocalLeader>s :silent T s<CR>
nnoremap <buffer> <LocalLeader>A :silent T A<CR>

" ||
" || Restarts
" ||

nnoremap <buffer> <LocalLeader>1 :silent T 1<CR>
nnoremap <buffer> <LocalLeader>2 :silent T 2<CR>
nnoremap <buffer> <LocalLeader>3 :silent T 3<CR>
nnoremap <buffer> <LocalLeader>4 :silent T 4<CR>
nnoremap <buffer> <LocalLeader>5 :silent T 5<CR>

" ||
" || Send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <Space>X :TREPLSendFile<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)
xmap <buffer> <Leader>x <Plug>(neoterm-repl-send)

nmap <buffer> <Leader>X <Plug>(neoterm-repl-send-line)

" ||
" || C-q
" ||

inoremap <silent> <buffer> <C-q><C-q> <Esc>:TREPLSendLine<CR>a

inoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>a
nnoremap <buffer> <C-q><C-w> <Esc>:silent T <C-r><C-a><CR>

" To be continued...
inoremap <buffer> <C-q>2 <Esc>vBBy:silent T <C-r>"<CR>gi
inoremap <buffer> <C-q>3 <Esc>vBBBy:silent T <C-r>"<CR>gi

" ||
" || Help
" ||

nnoremap <buffer> <C-g> :silent T listing(<C-r><C-w>).<CR>
nnoremap <buffer> g<C-g> :silent T vm_list(<C-r><C-w>).<CR>
nnoremap <buffer> <Leader><C-g> :silent T help(<C-r><C-w>).<CR>
nnoremap <buffer> <LocalLeader><C-g> :silent T apropos(<C-r><C-w>).<CR>


" TODO assert
