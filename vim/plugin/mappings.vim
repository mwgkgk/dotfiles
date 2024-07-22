" This file contains mappings for base Vim. Plugin mappings can be found in
" corresponding conf/<plugin>/plugin/mappings.vim files.:
" Filetype specific mappings can be found in ftplugin/<filetype>/mappings.vim

"
"
" UTF-8
"

scriptencoding utf-8

"
"
" Key Features
"

" Support C-c as Esc replacement:
" By default, C-c requires confirmation. Mapping to Esc would require
" changing cpoptions - see `:help c_<Esc>`. This is weird but works:
cnoremap <C-c> <C-c>
" Default C-c does not trigger InsertLeave, see `:help i_CTRL-c`.
inoremap <C-c> <Esc>

" Support C-g as Esc replacement:
cnoremap <C-g> <C-c>

" Use Space as C-w:
nmap <Space> <C-w>
vmap <Space> <C-w>

"
"
" Files
"

" Close all:
nnoremap <Space>Q :qa<CR>

" Write file:
nnoremap <Space>w :w<CR>

" Write & close:
nnoremap <Space>W :wq<CR>

" Reload current file:
nnoremap <F1> :e!<CR>zOzz

" Next/prev file in argument list:
nnoremap <Space>> :ne<CR>
nnoremap <Space>< :prev<CR>

" Edit file under same directory as the buffer:
nnoremap <Space>e :EditCreating <C-r>=expand('%:h').'/'<CR><C-d>

" Split file under same directory as the buffer:
nnoremap <Space>ge :SplitCreating <C-r>=expand('%:h').'/'<CR><C-d>

" VertSplit file under same directory as the buffer:
nnoremap <Space>E :VSplitCreating <C-r>=expand('%:h').'/'<CR><C-d>

" Prev/next by modified date:
nnoremap <silent> <Leader>dp :call files#by_date#prev()<CR>
nnoremap <silent> <Leader>dn :call files#by_date#next()<CR>

" First/last by modified date:
nnoremap <silent> <Leader>dP :call files#by_date#first()<CR>
nnoremap <silent> <Leader>dN :call files#by_date#last()<CR>

"
"
" Buffers
"

" Edit alternate file:
nnoremap <Space>a <C-^>

" List buffers:
nnoremap gb :ls<CR>:b

" List buffers from cmdline, see:
" https://stackoverflow.com/questions/59040146/how-to-execute-a-command-from-cnoremap
cnoremap <M-o> <Home>let @-="<End>"<CR>:ls<CR>:<C-r>-

" Next/Prev buffer:
nnoremap <Leader>< :bp<CR>
nnoremap <Leader>> :bn<CR>

" Delete buffer:
nnoremap <Leader>Q :bd<CR>

"
"
" Windows
"

" Previous window:
nnoremap <C-w><C-w> <C-w>p

" Close window:
" better use for :T
" nnoremap <Space><Leader> <C-w>q

" Keep filetype for new windows:
nnoremap <silent> <Space>n :call window#new("new")<CR>
nnoremap <silent> <Space>N :call window#new("vnew")<CR>

" New window above/to the left:
nnoremap <silent> <Space>gn :call window#new("above new")<CR>
nnoremap <silent> <Space>gN :call window#new("above vnew")<CR>

" New 33% split:
nnoremap <silent> <Space>v :call window#new_small_horizontal()<CR>
nnoremap <silent> <Space>V :call window#new_small_vertical()<CR>

" New 33% split above/to the left:
nnoremap <silent> <Space>gv :call window#new_small_above_horizontal()<CR>
nnoremap <silent> <Space>gV :call window#new_small_above_vertical()<CR>

" Switch & jump:
nnoremap <C-w>X <C-w>x<C-w>p

" Switch & maximize window:
nnoremap <Space>gj <C-w>j<C-w>_
nnoremap <Space>gk <C-w>k<C-w>_

" Move window between columns:
nnoremap <silent> <Space>gh :call window#suckless#move("h")<CR>
nnoremap <silent> <Space>gl :call window#suckless#move("l")<CR>

" Split alt file:
nnoremap <Space># :sp #<CR>
" Vert split alt file:
nnoremap <Space><Leader># :vert sp #<CR>
" Above split alt file:
nnoremap <Space>g# :above sp #<CR>

" Disable <C-w>o, use :only instead.
nnoremap <C-w>o <Nop>

" Change height:
nnoremap <Space>+ 10<C-w>+
nnoremap <Space>- 10<C-w>-

" Go to window by winnr()
" Note: used to use <C-w>1 etc. Change to easymotion's prefix to use <Omega>s
nnoremap \1 1<C-w>w
nnoremap \2 2<C-w>w
nnoremap \3 3<C-w>w
nnoremap \4 4<C-w>w
nnoremap \5 5<C-w>w
nnoremap \6 6<C-w>w
nnoremap \7 7<C-w>w
nnoremap \8 8<C-w>w
nnoremap \9 9<C-w>w

nnoremap \010 10<C-w>w
nnoremap \011 11<C-w>w
nnoremap \012 12<C-w>w
nnoremap \013 13<C-w>w
nnoremap \014 14<C-w>w
nnoremap \015 15<C-w>w
nnoremap \016 16<C-w>w
nnoremap \017 17<C-w>w
nnoremap \018 18<C-w>w
nnoremap \019 19<C-w>w

nnoremap \020 20<C-w>w
nnoremap \021 21<C-w>w
nnoremap \022 22<C-w>w
nnoremap \023 23<C-w>w
nnoremap \024 24<C-w>w
nnoremap \025 25<C-w>w
nnoremap \026 26<C-w>w
nnoremap \027 27<C-w>w
nnoremap \028 28<C-w>w
nnoremap \029 29<C-w>w

"
"
" Tabs
"

" Go to tab by tabpagenr()
nnoremap <Space>1 1gt
nnoremap <Space>2 2gt
nnoremap <Space>3 3gt
nnoremap <Space>4 4gt
nnoremap <Space>5 5gt
nnoremap <Space>6 6gt
nnoremap <Space>7 7gt
nnoremap <Space>8 8gt
nnoremap <Space>9 9gt

nnoremap <Space>010 10gt
nnoremap <Space>011 11gt
nnoremap <Space>012 12gt
nnoremap <Space>013 13gt
nnoremap <Space>014 14gt
nnoremap <Space>015 15gt
nnoremap <Space>016 16gt
nnoremap <Space>017 17gt
nnoremap <Space>018 18gt
nnoremap <Space>019 19gt

nnoremap <Space>020 20gt
nnoremap <Space>021 21gt
nnoremap <Space>022 22gt
nnoremap <Space>023 23gt
nnoremap <Space>024 24gt
nnoremap <Space>025 25gt
nnoremap <Space>026 26gt
nnoremap <Space>027 27gt
nnoremap <Space>028 28gt
nnoremap <Space>029 29gt

" Display tabs:
nnoremap <Space><M-o> :tabs<CR>

" Open nameless tab (named tabs are <Space>c with taboo.vim):
nnoremap <Space>C :tabe<CR>

" Close tab:
nnoremap <Space>gc :tabc<CR>

" Move window to next/previous tab:
nnoremap <Leader>th :call window#suckless#move_to_prev_tab()<CR>
nnoremap <Leader>tl :call window#suckless#move_to_next_tab()<CR>

" Most recent tab / previous tab:
let g:lasttab = 1
nnoremap <Space><Space> :exe "tabn " . g:lasttab<CR>

augroup lasttab
    autocmd!
    autocmd TabLeave * let g:lasttab = tabpagenr()
augroup END

"
"
" Folds / Zoom
"

" Fold/unfold everything:
nnoremap <Space>z zM
nnoremap z<Space> zR

" Zoom up:
nnoremap ze zt6<C-y>6<C-y>
" Zoom down:
nnoremap zd zb9<C-E>9<C-E>

" C-f as a reading scroll:
nnoremap <C-f> 6<C-e>6j

" Scroll up on left hand (used to be <C-e>)
nnoremap <C-g><C-d> <C-u>

" Mirror shell behavior with <C-e>
nnoremap <C-e> A

" Replacements for H, M, L:
nnoremap ,h H
nnoremap ,m M
nnoremap ,l L

" Up / down arrows
nnoremap <Up> 3<C-y>
nnoremap <Down> 3<C-e>

"
"
" Navigation
"

" Go to line number under cursor:
nnoremap <Leader>@ :<C-R><C-W><CR>

" Display jumplist:
nnoremap <M-S-o> :ju<CR>

" Go up the tag stack.
nnoremap g<C-o> <C-t>

" Go down the tag stack
nnoremap g<C-t> :tag<CR>

" Display tagstack:
nnoremap g<M-o> :tags<CR>

" C-t instead of C-i
nnoremap <silent> <C-t> <C-i>

"
"
" Search
"

" Recenter on n / N:
" The error is kinda slow
" nnoremap n nzOzz
" nnoremap N NzOzz

" Edit previous search:
nnoremap <Leader>/ /<C-r>/

" Clear search pattern:
nnoremap <Leader>n :let @/=""<CR>

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
"
" Visual mode
"

" No K in visual:
vnoremap K <nop>
" No join in visual:
vnoremap J <nop>

" Select last paste in visual mode:
nnoremap <expr> vp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Yank to +:
vnoremap <C-y> "+y
vnoremap <Leader>y "+y

" Narrowregion-like:
vnoremap <Leader>nr y<C-w>npk"_dd

"
"
" Normal mode
"

" Y to behave like C & D :
map Y y$

" Q for ^:
map Q ^

" <Leader>Q for macros:
nnoremap <Leader>Q q

" q for %:
map q %
xmap q %
xmap aq a%
xmap iq i%
omap q %
omap aq a%
omap iq i%

" Join up
nnoremap K -J

" Kill till EoL from normal
nnoremap <Leader><C-k> d$

" Restore C-x
nnoremap <C-x><C-a> <C-x>

" Restore single-quote functionality
nnoremap <Leader>` '

" Repeat f/F (";" is leader)
nnoremap <M-;> ;
vnoremap <M-;> ;

" Add newlines before and after:
nnoremap ,k O<Esc>j
nnoremap ,j o<Esc>k

" Enter insert mode @ the end:
nnoremap ga GA

" 1-handed undo:
nnoremap <Tab><Space> u

" Repeat macro:
nnoremap <M-y> @@

" Count non-whitespace chars:
" See plugin/golf.vim
nnoremap <Leader>gg :GolfChars<CR>
vnoremap <Leader>gg :GolfChars<CR>

"
"
" Command mode
"

" Edit previous command:
nnoremap <Space>: :<C-p>

" Open in vert split:
nnoremap <Leader>: :vert<Space>

" Execute command with the shell:
nnoremap !! :!

" Directory of the current file:
cnoremap %% <C-r>=expand('%:h').'/'<CR>

" Prev command with a bang:
cmap $$ <C-r>=histget("cmd", -1)<CR><C-a><M-f>!

" Args of a previous command
cnoremap !$ <C-f>k0f y$G<C-c><End><C-r>"

"
"
" Quickfix
"

" Next/prev quickfix item:
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

"
"
" Preview Window
"

nnoremap <silent> <LocalLeader>c :pclose<CR>

"
"
" Insert mode
"

" Disable <F1> insert-mode:
inoremap <F1> <nop>

" Move C-t to <C-g><C-d>
inoremap <C-g><C-d> <C-t>

" C-t for digraphs
inoremap <C-t> <C-k>

" M-t to transpose-char:
inoremap <M-t> <Esc>hxpa

" This both fixes the Ultisnip annoyance and is better than c-f [Citation
" needed]
inoremap <C-j> <Right>

" Kill line on C-k like readline
inoremap <C-k> <C-o>D

" C-M-k to join up
inoremap <C-M-k> <Esc>-Jgi
" C-M-j to join down
inoremap <C-M-j> <Esc>Jgi

" Add newlines before and after:
inoremap <C-g><C-k> <Esc>O<Esc>2$a
inoremap <C-g><C-j> <CR><Esc>kA

" Move up/down to the end of the line
inoremap <M-j> <Esc>jA
inoremap <M-k> <Esc>kA

" Center screen
inoremap <M-m> <C-o>zz

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
"
" Terminal
"

tnoremap <Esc> <C-\><C-n>
tnoremap <C-\><Esc> <Esc>

"
"
" Registers
"

" Detailed register status
nnoremap <Space>" :reg<CR>

" Display marks:
nnoremap <Space>~ :marks<CR>

" Insert mode easy paste:
" inoremap <C-r><C-w> <C-r>"
inoremap <C-r><C-r> <C-r>*
inoremap <C-r><C-e> <C-r>+

" Command mode easy paste:
" cnoremap <C-r><C-w> <C-r>"
cnoremap <C-r><C-r> <C-r>*
cnoremap <C-r><C-e> <C-r>+

" Bring back word-under-cursor
" cnoremap <C-r>w <C-r><C-w>

" Enable Paste mode for one paste:
inoremap <C-r>w <Esc>:set paste<CR>i<C-r>"<Esc>:set nopaste<CR>'[=']
inoremap <C-r>r <Esc>:set paste<CR>i<C-r>*<Esc>:set nopaste<CR>'[=']
inoremap <C-r>e <Esc>:set paste<CR>i<C-r>+<Esc>:set nopaste<CR>'[=']

" Easier <C-r> mappings:
inoremap <C-r><C-a> <C-r>a
cnoremap <C-r><C-a> <C-r>a
inoremap <C-r><C-s> <C-r>s
cnoremap <C-r><C-s> <C-r>s
inoremap <C-r><C-d> <C-r>d
cnoremap <C-r><C-d> <C-r>d
inoremap <C-r><C-f> <C-r>f
cnoremap <C-r><C-f> <C-r>f

" Paste replacing line:
nnoremap <Leader>p "_ddP
vnoremap <Leader>p "_dP

" Paste replacing, motion:
nnoremap <silent> cp :set opfunc=change_paste#change<CR>g@

" Propagate "" to "+ :
nnoremap <silent> <Leader>y :let @+=@"<CR>:echo 'Yanked ' .
            \ helpers#pluralize('line', len(split(@+, '\n'))) . ' to +.'<CR>

"
"
" Mouse
"

" Yank to ":
vnoremap <LeftRelease> "*y<LeftRelease>

" Mouse insert made easier:
nnoremap <MiddleMouse> a<MiddleMouse><Esc>
inoremap <MiddleMouse> <MiddleMouse><Esc>
vnoremap <MiddleMouse> c<MiddleMouse><Esc>

" Consistent Right Mouse :
nmap <RightMouse> <LeftMouse><RightMouse>
imap <RightMouse> <Esc><RightMouse>

" Clear Search with mouse
nnoremap <C-LeftMouse> :let @/=""<CR>

"
"
" Echo
"

" Display full name, number of lines, percentage, modified:
nnoremap <Space><F1> 1<C-g>

" Display column / line number, byte / word count:
nnoremap g<F1> g<C-g>

" Echo highlight:
nnoremap <Leader>eh :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" Echo foldlevel:
nnoremap <Leader>ef :echo foldlevel(".")<CR>

" Echo indent:
nnoremap <Leader>ei :echo indent(".")<CR>

" Echo :pwd
nnoremap <Leader>ep :pwd<CR>

"
"
" Toggle
"

" Toggle paste/nopaste:
set pastetoggle=<Leader>tp

" Toggle scrollbind:
nnoremap <Leader>tb :windo set scrollbind!<CR>

" Toggle scrolloff mode:
nnoremap <Leader>tz :let &scrolloff=999-&scrolloff<CR>

" Toggle light/dark background:
nnoremap <Leader>bg :call toggle#background()<CR>

" Toggle number:
nnoremap <Leader>tn :call toggle#number()<CR>

" Toggle relativenumber:
nnoremap <Leader>tr :call toggle#rnu()<CR>

" Toggle hardwrap:
nnoremap <Leader>tw :call toggle#hardwrap()<CR>

" Toggle diff mode:
nnoremap <Leader>td :call toggle#diff()<CR>

" Toggle verbose:
nnoremap <Leader>tv :call toggle#verbose()<CR>

"
"
" Spellcheck
"

" Toggle spellcheck:
" NOTE <C-g> normal mode is used for docs, so using <C-g><C-g> adds a delay.
nnoremap <Space><C-g> :call toggle#spelling()<CR>

" Insert mode toggle:
inoremap <C-g><C-g> <Esc>:call toggle#spelling()<CR>a

" Fix previous word:
inoremap <C-g><C-l> <C-g>u<Esc>:setlocal spell<CR>[s1z=`]a<C-g>u

"
"
" Make
"

" Shift-F9 for proper make using makeprg
nnoremap [18;2~ :make<CR>:copen<CR>

"
"
" Current Directory
"

" Cd to previous dir:
nnoremap <Leader>cdp :cd -<CR>:pwd<CR>

" Cd to current buffer's dirname:
nnoremap <Leader>cdf :cd %:p:h<CR>:pwd<CR>

" Cd to toplevel git dir:
nnoremap <Leader>cdt :silent execute 'cd' system('git rev-parse --show-toplevel')<CR>:pwd<CR>

" Cd to .git dir:
nnoremap <Leader>cdg :silent execute 'cd' system('git rev-parse --git-dir')<CR>:pwd<CR>

"
"
" Vimrc
"

" Reload vimrc:
nnoremap <F6> :source ~/.vim/vimrc<CR>
