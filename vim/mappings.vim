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
nnoremap <Space>e :e <C-R>=expand('%:h').'/'<CR><C-D>

" Split file under same directory as the buffer:
nnoremap <Space>E :sp <C-R>=expand('%:h').'/'<CR><C-D>

" VertSplit file under same directory as the buffer:
nnoremap <Space>V :vs <C-R>=expand('%:h').'/'<CR><C-D>

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
nnoremap <Space>gj <C-W>j<C-W>_
nnoremap <Space>gk <C-W>k<C-W>_

" Move window between columns:
nnoremap <silent> <C-W>gh :call windows#move("h")<CR>
nnoremap <silent> <C-W>gl :call windows#move("l")<CR>

" Split alt file:
nnoremap <Space># :sp #<CR>

" Disable <C-W>o, use :only instead.
nnoremap <C-w>o <Nop>

" Change height:
nnoremap <Space>+ 10<C-W>+
nnoremap <Space>- 10<C-W>-

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
nnoremap z<Space> zM
nnoremap <Space>z zR


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
nnoremap <Leader>/ /<C-R>/

" Vimgrep last search and open quickfix:
nnoremap <Space>/ :silent! vimgrep // %<CR>:copen<CR>

" Jump to prev/next match without leaving search command mode:
cnoremap <C-o> <CR>NN/<C-P>
cnoremap <C-t> <CR>/<C-P>

" Subsitute word under cursor:
nnoremap <LocalLeader># :%s /<C-R><C-W>//g<Left><Left>
nnoremap <LocalLeader>* :%s /<C-R><C-W>//g<Left><Left>

" Substitute last search pattern:
nnoremap <LocalLeader>/ :%s /<C-R>///g<Left><Left>


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

" Smaller undo chunks:
inoremap . .<C-g>u
inoremap , ,<C-g>u
inoremap ? ?<C-g>u
inoremap ! !<C-g>u
inoremap <C-w> <C-g>u<C-w>
inoremap <C-r> <C-g>u<C-r>

" Mouse insert made easier:
nnoremap <MiddleMouse> a<MiddleMouse><Esc>
inoremap <MiddleMouse> <MiddleMouse><Esc>
vnoremap <MiddleMouse> c<MiddleMouse><Esc>
