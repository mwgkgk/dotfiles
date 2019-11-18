" This file is part of the undergoing configuration refactor.
" See baby.vim for the entry point.

" This file contains mappings for base Vim. Plugin mappings can be found in
" corresponding conf/<plugin>/plugin/mappings.vim files.


"
" Key Features
"

" Support C-c as Esc replacement:
" By default, C-c requires confirmation. Mapping to Esc would require
" changing cpoptions - see `:help c_<Esc>`. This is weird but works:
cnoremap <C-c> <C-c>
" Default C-c does not trigger InsertLeave, see `:help i_CTRL-c`.
inoremap <C-c> <Esc>

" Use Space as C-w:
nmap <Space> <C-w>
vmap <Space> <C-w>


"
" Files
"

" Close all:
nnoremap <Space>>Q :qa<CR>

" Write file:
nnoremap <Space>w :w<CR>

" Write & close:
nnoremap <Space>W :wq<CR>

" Edit file under same directory as the buffer:
nnoremap <Space>e :e <C-r>=expand('%:h').'/'<CR><C-d>

" Split file under same directory as the buffer:
nnoremap <Space>E :sp <C-r>=expand('%:h').'/'<CR><C-d>

" VertSplit file under same directory as the buffer:
nnoremap <Space>V :vs <C-r>=expand('%:h').'/'<CR><C-d>

" Prev/next by modified date:
nnoremap <Leader>dp :call files#prev_by_date()<CR>
nnoremap <Leader>dn :call files#next_by_date()<CR>


"
" Windows
"

" Previous window:
nnoremap <C-w><C-w> <C-w>p

" Keep filetype for new windows:
nnoremap <silent> <Space>n :call windows#new("new")<CR>
nnoremap <silent> <Space>N :call windows#new("vnew")<CR>

" Switch & maximize window:
nnoremap <Space>gj <C-w>j<C-w>_
nnoremap <Space>gk <C-w>k<C-w>_

" Move window between columns:
nnoremap <silent> <C-w>gh :call windows#move("h")<CR>
nnoremap <silent> <C-w>gl :call windows#move("l")<CR>

" Split alt file:
nnoremap <Space># :sp #<CR>

" Disable <C-w>o, use :only instead.
nnoremap <C-w>o <Nop>

" Change height:
nnoremap <Space>+ 10<C-w>+
nnoremap <Space>- 10<C-w>-

" Go to window by winnr()
nnoremap <C-w>1 1<C-w>w
nnoremap <C-w>2 2<C-w>w
nnoremap <C-w>3 3<C-w>w
nnoremap <C-w>4 4<C-w>w
nnoremap <C-w>5 5<C-w>w
nnoremap <C-w>6 6<C-w>w
nnoremap <C-w>7 7<C-w>w
nnoremap <C-w>8 8<C-w>w
nnoremap <C-w>9 9<C-w>w

nnoremap <C-w>010 10<C-w>w
nnoremap <C-w>011 11<C-w>w
nnoremap <C-w>012 12<C-w>w
nnoremap <C-w>013 13<C-w>w
nnoremap <C-w>014 14<C-w>w
nnoremap <C-w>015 15<C-w>w
nnoremap <C-w>016 16<C-w>w
nnoremap <C-w>017 17<C-w>w
nnoremap <C-w>018 18<C-w>w
nnoremap <C-w>019 19<C-w>w

nnoremap <C-w>020 20<C-w>w
nnoremap <C-w>021 21<C-w>w
nnoremap <C-w>022 22<C-w>w
nnoremap <C-w>023 23<C-w>w
nnoremap <C-w>024 24<C-w>w
nnoremap <C-w>025 25<C-w>w
nnoremap <C-w>026 26<C-w>w
nnoremap <C-w>027 27<C-w>w
nnoremap <C-w>028 28<C-w>w
nnoremap <C-w>029 29<C-w>w



"
" Folds
"

" Fold/unfold everything:
nnoremap <Space>z zM
nnoremap z<Space> zR


"
" Help
"

" Help on word under cursor:
nnoremap g<C-]> :help <C-r><C-w><CR>


"
" Search
"

" Recenter on n / N:
nnoremap n nzOzz
nnoremap N NzOzz

" Edit previous search:
nnoremap <Leader>/ /<C-r>/

" Vimgrep last search and open quickfix:
nnoremap <Space>/ :silent! vimgrep // %<CR>:copen<CR>

" Jump to prev/next match without leaving search command mode:
cnoremap <C-o> <CR>NN/<C-p>
cnoremap <C-t> <CR>/<C-p>

" Subsitute word under cursor:
nnoremap <LocalLeader># :%s /<C-r><C-w>//g<Left><Left>
nnoremap <LocalLeader>* :%s /<C-r><C-w>//g<Left><Left>

" Substitute last search pattern:
nnoremap <LocalLeader>/ :%s /<C-r>///g<Left><Left>


"
" Visual mode
"

" No K in visual:
vnoremap K <nop>
" No join in visual:
vnoremap J <nop>


"
" Normal mode
"

" Count non-whitespace chars:
" See plugin/golf.vim
nnoremap <Leader>gg :GolfChars<CR>
vnoremap <Leader>gg :GolfChars<CR>


"
" Insert mode
"

" C-t for digraphs
inoremap <C-t> <C-k>

" Kill line on C-k like readline
inoremap <C-k> <C-o>D

" C-M-k to join up
inoremap <C-M-k> <Esc>-Jgi
" C-M-j to join down
inoremap <C-M-j> <Esc>Jgi

" C-j to slide down
inoremap <C-j> <CR><Esc>kA

" - Move up/down to the end of the line
inoremap <M-j> <Esc>jA
inoremap <M-k> <Esc>kA

" Insert word from the line above (C-y improved)
inoremap <expr> <C-y> matchstr(getline(line('.')-1), '\%' . virtcol('.') . 'v\%(\k\+\s\=\\|.\)')

" Complete line
inoremap <C-l> <C-x><C-l>
" Omni complete
inoremap <M-w> <C-x><C-o>

" Insert-mode uppercase previous word:
imap <C-g>U <C-c>bgUwgi
" Insert-mode lowercase prev word:
imap <C-g>u <C-c>bguwgi
" Insert-mode toggle case prev word:
imap <C-g><C-u> <C-c>bg~wgi
" Insert-mode surround previous word with backticks:
imap <C-g>` <C-c>bysw`Ea

" Notepad-like backwards kill-word (only gvim).
" See trivia:
" https://devblogs.microsoft.com/oldnewthing/20071011-00/?p=24823
inoremap <C-BS> <C-w>

" Insert system()
inoremap <C-r>( <C-r>=system('')<Left><Left>

" Smaller undo chunks:
inoremap . .<C-g>u
inoremap , ,<C-g>u
inoremap ? ?<C-g>u
inoremap ! !<C-g>u
inoremap <C-w> <C-g>u<C-w>
inoremap <C-r> <C-g>u<C-r>


"
" Registers
"

" Mouse insert made easier:
nnoremap <MiddleMouse> a<MiddleMouse><Esc>
inoremap <MiddleMouse> <MiddleMouse><Esc>
vnoremap <MiddleMouse> c<MiddleMouse><Esc>

" Insert mode easy paste:
inoremap <C-r><C-w> <C-r>"
inoremap <C-r><C-r> <C-r>*
inoremap <C-r><C-e> <C-r>+

" Command mode easy paste:
cnoremap <C-r><C-w> <C-r>j
cnoremap <C-r><C-r> <C-r>*
cnoremap <C-r><C-e> <C-r>+

" Enable Paste mode for one paste:
inoremap <C-r>w <Esc>:set paste<CR>i<C-r>"<Esc>:set nopaste<CR>'[=']
inoremap <C-r>r <Esc>:set paste<CR>i<C-r>*<Esc>:set nopaste<CR>'[=']
inoremap <C-r>e <Esc>:set paste<CR>i<C-r>+<Esc>:set nopaste<CR>'[=']
