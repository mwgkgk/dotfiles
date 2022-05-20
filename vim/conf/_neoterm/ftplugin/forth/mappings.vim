scriptencoding utf-8

" ||
" || REPL control
" ||

" Run repl
nnoremap <silent> <buffer> <LocalLeader>gg :T gf<CR>
nnoremap <silent> <buffer> <LocalLeader>gf :T gf<CR>
nnoremap <silent> <buffer> <LocalLeader>gp :T pf<CR>
nnoremap <silent> <buffer> <LocalLeader>gb :T bf<CR>

" Include current file
nnoremap <silent> <buffer> <Leader>r :T include <C-r>=expand("%")<CR><CR>
nnoremap <silent> <buffer> <Leader>R :T include <C-r>=expand("%:p")<CR><CR>

" Reload RC
nnoremap <silent> <buffer> <LocalLeader>r :T load-rc<CR>

" ||
" || Send
" ||

" The idea is as follows:
" - X to send line under cursor
nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>

" - Fancy old X that prints & clears stack, still very useful
" Uses following words:
" : →   .s clearstack ;
" : ↓   cr .s clearstack ;
nnoremap <silent> <buffer> <Leader>x :T clearstack<CR><Bar>:T <C-r>=getline('.')<CR> →<CR>
nnoremap <silent> <buffer> <LocalLeader>x :T clearstack<CR><Bar>:T <C-r>=getline('.')<CR> →<CR>
nnoremap <silent> <buffer> <Leader>gx :T clearstack<CR><Bar>:T <C-r>=getline('.')<CR> ↓<CR>

" TODO Remap! Temp comment out to free-up <Space>x as <C-w>x
" nnoremap <Space>X :TREPLSendFile<CR>

" C-q and q offer word- and section-based send:
" In the general case, <C-q> and q both offer neoterm-repl-send motion.
" C-q works in insert mode.
" xmap is for visual, and duplicates :TREPLSendSelection.
nmap <buffer> q <Plug>(neoterm-repl-send)
xmap <buffer> q <Plug>(neoterm-repl-send)
nmap <buffer> <C-q> <Plug>(neoterm-repl-send)
xmap <buffer> <C-q> <Plug>(neoterm-repl-send)

" Send 2 words, send 3 words
inoremap <silent> <buffer> <C-q>2 <Esc>vBBy:T <C-r>"<CR>gi
inoremap <silent> <buffer> <C-q>3 vBBBy:T <C-r>"<CR>gi

" C-q C-q to send word under cursor or last word
inoremap <silent> <buffer> <C-q><C-q> <Esc>:T <C-r><C-a><CR>a
nnoremap <silent> <buffer> <C-q><C-q> :T <C-r><C-a><CR>
nnoremap <silent> <buffer> qq :T <C-r><C-a><CR>

" C-q C-w to send from the beginning of the line til cursor
inoremap <silent> <buffer> <C-q><C-w> <Esc>v0y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-w> v0y:T <C-r>"<CR>

" C-q C-e to send from cursor till EoL
inoremap <silent> <buffer> <C-q><C-e> <Esc>v$y:T <C-r>"<CR>gi
nnoremap <silent> <buffer> <C-q><C-e> v$y:T <C-r>"<CR>

" ||
" || See
" ||

" See under cursor
nnoremap <silent> <buffer> <C-g><C-g> :T see <C-r><C-a><CR>
" Locate
nnoremap <silent> <buffer> <C-g>g :T locate <C-r><C-a><CR>
" Variable under cursor
nnoremap <silent> <buffer> <C-g>v :T <C-r><C-a> ?<CR>

" See anything
" Not <silent> on purpose
nnoremap <buffer> <Space><LocalLeader> :T see<Space>

" Gforth memes
nnoremap <silent> <buffer> <LocalLeader><C-g> :T simple-see <C-r><C-a><CR>
nnoremap <silent> <buffer> g<C-g> :T where <C-r><C-a><CR>
nnoremap <silent> <buffer> <Leader><C-g> :T locate <C-r><C-a><CR>

" pForth memes
" nnoremap <silent> <buffer> <Leader><C-g> :T file? <C-r><C-w><CR>
" nnoremap <silent> <buffer> <LocalLeader>` :T  map<CR>

" ||
" || Stack
" ||

" Stack
nnoremap <silent> <buffer> <Leader>s :T .s<CR>
nnoremap <silent> <buffer> <LocalLeader>s :T .s<CR>

" Clear
nnoremap <silent> <buffer> <LocalLeader>c :T clearstack<CR>
" Page
nnoremap <silent> <buffer> <LocalLeader>C :T page<CR>

" ||
" || Drop
" ||

" .
nnoremap <silent> <buffer> <LocalLeader>. :T .<CR>
nnoremap <silent> <buffer> <LocalLeader>t :T 2dup type<CR>

" Drop
nnoremap <silent> <buffer> <LocalLeader>d :T drop<CR>
nnoremap <silent> <buffer> <LocalLeader>2d :T 2drop<CR>

nnoremap <silent> <buffer> <LocalLeader>n :T nip<CR>

" ||
" || Dup
" ||

" Dup
nnoremap <silent> <buffer> <LocalLeader>D :T dup<CR>
nnoremap <silent> <buffer> <LocalLeader>2D :T 2dup<CR>

" ||
" || Eq
" ||

nnoremap <silent> <buffer> <LocalLeader>= :T =<CR>

" ||
" || Base
" ||

nnoremap <silent> <buffer> <LocalLeader><Space><Space> :T decimal<CR>
nnoremap <silent> <buffer> <LocalLeader><Space>h :T hex<CR>
nnoremap <silent> <buffer> <LocalLeader><Space>d :T decimal<CR>
nnoremap <silent> <buffer> <LocalLeader><Space>o :T 8 base !<CR>
nnoremap <silent> <buffer> <LocalLeader><Space>b :T 2 base !<CR>

" ||
" || Status
" ||

nnoremap <silent> <buffer> <LocalLeader>ag :T .any-new-memes?<CR>

" ||
" || Numbers
" ||

nnoremap <silent> <buffer> <LocalLeader>0 :T 0<CR>
nnoremap <silent> <buffer> <LocalLeader>1 :T 1<CR>
nnoremap <silent> <buffer> <LocalLeader>2 :T 2<CR>
nnoremap <silent> <buffer> <LocalLeader>3 :T 3<CR>
nnoremap <silent> <buffer> <LocalLeader>4 :T 4<CR>
nnoremap <silent> <buffer> <LocalLeader>5 :T 5<CR>
nnoremap <silent> <buffer> <LocalLeader>6 :T 6<CR>
nnoremap <silent> <buffer> <LocalLeader>7 :T 7<CR>
nnoremap <silent> <buffer> <LocalLeader>8 :T 9<CR>
nnoremap <silent> <buffer> <LocalLeader>9 :T 9<CR>
