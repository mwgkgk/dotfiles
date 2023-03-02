scriptencoding utf-8

" ||
" || REPL control
" ||

" Run repl
nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T gf<CR>
nnoremap <silent> <buffer> <LocalLeader>[g :T gf<CR>
nnoremap <silent> <buffer> <LocalLeader>[p :T pf<CR>
nnoremap <silent> <buffer> <LocalLeader>[b :T bf<CR>

nnoremap <silent> <buffer> <LocalLeader>[[ :T gf -e bye <C-r>=expand('%:p')<CR><CR>

" Include current file
nnoremap <silent> <buffer> <LocalLeader>i :T include <C-r>=expand("%")<CR><CR>
nnoremap <silent> <buffer> <LocalLeader>I :T include <C-r>=expand("%:p")<CR><CR>

" Reload RC
nnoremap <silent> <buffer> <LocalLeader>[r :T load-rc<CR>

" Run
nnoremap <silent> <buffer> <Leader><C-r> :T gf <C-r>=expand('%')<CR><CR>

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
" Variable under cursor
nnoremap <silent> <buffer> <C-g>v :T <C-r><C-a> ?<CR>
" 2variable under cursor
nnoremap <silent> <buffer> <C-g>tv :T <C-r><C-a> 2@ d.<CR>
" Defined? (useful to preserve the stacks)
nnoremap <silent> <buffer> <C-g>d :T [defined] <C-r><C-a> .<CR>
" Dump 8 cells under cursor
nnoremap <silent> <buffer> <C-g>u :T <C-r><C-a> 8 cells dump<CR>
nnoremap <silent> <buffer> <LocalLeader>u :T <C-r><C-a> 8 cells dump<CR>
" Dump 32 cells under cursor
nnoremap <silent> <buffer> <C-g>U :T <C-r><C-a> 32 cells dump<CR>
nnoremap <silent> <buffer> <LocalLeader>U :T <C-r><C-a> 32 cells dump<CR>

" See anything
" Not <silent> on purpose
nnoremap <buffer> <C-g>a :T see<Space>

" Gforth memes
nnoremap <silent> <buffer> <C-g>s :T simple-see <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>w :T where <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>l :T locate <C-r><C-a><CR>
nnoremap <silent> <buffer> <C-g>h :T help <C-r><C-a><CR>

" pForth memes
" nnoremap <silent> <buffer> <Leader><C-g> :T file? <C-r><C-w><CR>
" nnoremap <silent> <buffer> <LocalLeader>` :T  map<CR>

" ||
" || Stack
" ||

" Stack
nnoremap <silent> <buffer> <Leader>s :T .s<CR>

" Clear
nnoremap <silent> <buffer> <LocalLeader>c :T clearstack<CR>
" Page
nnoremap <silent> <buffer> <LocalLeader>C :T page<CR>

" ||
" || Drop
" ||

" .
nnoremap <silent> <buffer> <LocalLeader>. :T .<CR>
nnoremap <silent> <buffer> <LocalLeader>T :T 2dup type<CR>

" Drop
nnoremap <silent> <buffer> <LocalLeader>d :T drop<CR>
nnoremap <silent> <buffer> <LocalLeader>td :T 2drop<CR>

nnoremap <silent> <buffer> <LocalLeader>n :T nip<CR>

" ||
" || Dup, over
" ||

" Dup
nnoremap <silent> <buffer> <LocalLeader>D :T dup<CR>
nnoremap <silent> <buffer> <LocalLeader>tD :T 2dup<CR>

nnoremap <silent> <buffer> <LocalLeader>o :T over<CR>
nnoremap <silent> <buffer> <LocalLeader>T :T tuck<CR>

" ||
" || Swap, rot
" ||

nnoremap <silent> <buffer> <LocalLeader>s :T swap<CR>
nnoremap <silent> <buffer> <LocalLeader>r :T rot<CR>
nnoremap <silent> <buffer> <LocalLeader>R :T -rot<CR>

" ||
" || Roll, pick
" ||

nnoremap <silent> <buffer> <LocalLeader>gr0 :T 0 roll<CR>
nnoremap <silent> <buffer> <LocalLeader>gr1 :T 1 roll<CR>
nnoremap <silent> <buffer> <LocalLeader>gr2 :T 2 roll<CR>
nnoremap <silent> <buffer> <LocalLeader>gr3 :T 3 roll<CR>
nnoremap <silent> <buffer> <LocalLeader>gr4 :T 4 roll<CR>
nnoremap <silent> <buffer> <LocalLeader>gr5 :T 5 roll<CR>
nnoremap <silent> <buffer> <LocalLeader>gr6 :T 6 roll<CR>
nnoremap <silent> <buffer> <LocalLeader>gr7 :T 7 roll<CR>
nnoremap <silent> <buffer> <LocalLeader>gr8 :T 8 roll<CR>
nnoremap <silent> <buffer> <LocalLeader>gr9 :T 9 roll<CR>

nnoremap <silent> <buffer> <LocalLeader>gp0 :T 0 pick<CR>
nnoremap <silent> <buffer> <LocalLeader>gp1 :T 1 pick<CR>
nnoremap <silent> <buffer> <LocalLeader>gp2 :T 2 pick<CR>
nnoremap <silent> <buffer> <LocalLeader>gp3 :T 3 pick<CR>
nnoremap <silent> <buffer> <LocalLeader>gp4 :T 4 pick<CR>
nnoremap <silent> <buffer> <LocalLeader>gp5 :T 5 pick<CR>
nnoremap <silent> <buffer> <LocalLeader>gp6 :T 6 pick<CR>
nnoremap <silent> <buffer> <LocalLeader>gp7 :T 7 pick<CR>
nnoremap <silent> <buffer> <LocalLeader>gp8 :T 8 pick<CR>
nnoremap <silent> <buffer> <LocalLeader>gp9 :T 9 pick<CR>

" ||
" || Eq
" ||

nnoremap <silent> <buffer> <LocalLeader>= :T =<CR>

" ||
" || Variables
" ||

nnoremap <silent> <buffer> <LocalLeader>vv :T <C-r><C-a> ?<CR>
nnoremap <silent> <buffer> <LocalLeader>vk :T 1 <C-r><C-a> +!<CR>
nnoremap <silent> <buffer> <LocalLeader>vj :T -1 <C-r><C-a> +!<CR>

" ||
" || Execution tokens
" ||

nnoremap <silent> <buffer> <LocalLeader>" :T ' <C-r><C-a><CR>
nnoremap <silent> <buffer> <LocalLeader>e :T execute<CR>

" ||
" || Base
" ||

nnoremap <silent> <buffer> <LocalLeader>bh :T hex<CR>
nnoremap <silent> <buffer> <LocalLeader>bd :T decimal<CR>
nnoremap <silent> <buffer> <LocalLeader>bo :T 8 base !<CR>
nnoremap <silent> <buffer> <LocalLeader>bb :T 2 base !<CR>

" ||
" || Pad
" ||

nnoremap <silent> <buffer> <C-g>p :T pad 32 cells dump<CR>

nnoremap <silent> <buffer> <LocalLeader>pp :T pad 32 cells dump<CR>
nnoremap <silent> <buffer> <LocalLeader>pe :T pad 32 cells erase<CR>
nnoremap <silent> <buffer> <LocalLeader>pb :T pad 32 cells blank<CR>

" ||
" || Status
" ||

nnoremap <silent> <buffer> <LocalLeader>ag :T .any-new-memes?<CR>

" ||
" || Numbers
" ||

nnoremap <silent> <buffer> <LocalLeader>- :T -1<CR>
nnoremap <silent> <buffer> <LocalLeader>0 :T 0<CR>
nnoremap <silent> <buffer> <LocalLeader>1 :T 1<CR>
nnoremap <silent> <buffer> <LocalLeader>2 :T 2<CR>
nnoremap <silent> <buffer> <LocalLeader>3 :T 3<CR>
nnoremap <silent> <buffer> <LocalLeader>4 :T 4<CR>
nnoremap <silent> <buffer> <LocalLeader>5 :T 5<CR>
nnoremap <silent> <buffer> <LocalLeader>6 :T 6<CR>
nnoremap <silent> <buffer> <LocalLeader>7 :T 7<CR>
nnoremap <silent> <buffer> <LocalLeader>8 :T 8<CR>
nnoremap <silent> <buffer> <LocalLeader>9 :T 9<CR>

" ||
" || Markers
" ||

nnoremap <silent> <buffer> <LocalLeader>m0 :T marker -save0<CR>
nnoremap <silent> <buffer> <LocalLeader>m1 :T marker -save1<CR>
nnoremap <silent> <buffer> <LocalLeader>m2 :T marker -save2<CR>
nnoremap <silent> <buffer> <LocalLeader>m3 :T marker -save3<CR>
nnoremap <silent> <buffer> <LocalLeader>m4 :T marker -save4<CR>
nnoremap <silent> <buffer> <LocalLeader>m5 :T marker -save5<CR>
nnoremap <silent> <buffer> <LocalLeader>m6 :T marker -save6<CR>
nnoremap <silent> <buffer> <LocalLeader>m7 :T marker -save7<CR>
nnoremap <silent> <buffer> <LocalLeader>m8 :T marker -save8<CR>
nnoremap <silent> <buffer> <LocalLeader>m9 :T marker -save9<CR>

nnoremap <silent> <buffer> <LocalLeader>mr0 :T -save0<CR>
nnoremap <silent> <buffer> <LocalLeader>mr1 :T -save1<CR>
nnoremap <silent> <buffer> <LocalLeader>mr2 :T -save2<CR>
nnoremap <silent> <buffer> <LocalLeader>mr3 :T -save3<CR>
nnoremap <silent> <buffer> <LocalLeader>mr4 :T -save4<CR>
nnoremap <silent> <buffer> <LocalLeader>mr5 :T -save5<CR>
nnoremap <silent> <buffer> <LocalLeader>mr6 :T -save6<CR>
nnoremap <silent> <buffer> <LocalLeader>mr7 :T -save7<CR>
nnoremap <silent> <buffer> <LocalLeader>mr8 :T -save8<CR>
nnoremap <silent> <buffer> <LocalLeader>mr9 :T -save9<CR>

" ||
" || Return stack
" ||

nnoremap <silent> <buffer> <Leader>rp :T <C-r><C-a> >r<CR>
nnoremap <silent> <buffer> <Leader>rP :T ' <C-r><C-a> >r<CR>
nnoremap <silent> <buffer> <Leader>r. :T r@ .<CR>
nnoremap <silent> <buffer> <Leader>re :T r@ execute<CR>

nnoremap <silent> <buffer> <Leader>rl :T >r<CR>
nnoremap <silent> <buffer> <Leader>rg :T r><CR>
nnoremap <silent> <buffer> <Leader>r> :T r><CR>
nnoremap <silent> <buffer> <Leader>rf :T r@<CR>
nnoremap <silent> <buffer> <Leader>r@ :T r@<CR>
nnoremap <silent> <buffer> <Leader>rd :T rdrop<CR>

nnoremap <silent> <buffer> <Leader>rtl :T 2>r<CR>
nnoremap <silent> <buffer> <Leader>rtg :T 2r><CR>
nnoremap <silent> <buffer> <Leader>rt> :T 2r><CR>
nnoremap <silent> <buffer> <Leader>rtf :T 2r@<CR>
nnoremap <silent> <buffer> <Leader>rt@ :T 2r@<CR>
nnoremap <silent> <buffer> <Leader>rtd :T 2rdrop<CR>

" ||
" || Floating point stack
" ||

nnoremap <silent> <buffer> <LocalLeader>fd :T fdrop<CR>
nnoremap <silent> <buffer> <LocalLeader>fn :T fnip<CR>
nnoremap <silent> <buffer> <LocalLeader>fs :T fswap<CR>
nnoremap <silent> <buffer> <LocalLeader>fD :T fdup<CR>
nnoremap <silent> <buffer> <LocalLeader>fo :T fover<CR>
nnoremap <silent> <buffer> <LocalLeader>ft :T ftuck<CR>

nnoremap <silent> <buffer> <LocalLeader>fgp0 :T 0 fpick<CR>
nnoremap <silent> <buffer> <LocalLeader>fgp1 :T 1 fpick<CR>
nnoremap <silent> <buffer> <LocalLeader>fgp2 :T 2 fpick<CR>
nnoremap <silent> <buffer> <LocalLeader>fgp3 :T 3 fpick<CR>
nnoremap <silent> <buffer> <LocalLeader>fgp4 :T 4 fpick<CR>
nnoremap <silent> <buffer> <LocalLeader>fgp5 :T 5 fpick<CR>
nnoremap <silent> <buffer> <LocalLeader>fgp6 :T 6 fpick<CR>
nnoremap <silent> <buffer> <LocalLeader>fgp7 :T 7 fpick<CR>
nnoremap <silent> <buffer> <LocalLeader>fgp8 :T 8 fpick<CR>
nnoremap <silent> <buffer> <LocalLeader>fgp9 :T 9 fpick<CR>
