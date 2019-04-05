" vim: foldmethod=marker foldlevel=0

filetype plugin indent on
syntax on
set encoding=utf-8
scriptencoding utf-8

let g:mapleader=";"
let g:maplocalleader="'"

augroup vimrc
    autocmd!
augroup END

" No backup
set nobackup
set nowritebackup
set noswapfile
set viminfo='1000,:0,<0,@0,f1,/0

" Sessions :
set sessionoptions-=options
set sessionoptions-=localoptions
set sessionoptions-=buffers
" autocmd vimrc SessionLoadPost * tabdo exe 'windo exe "normal zz"'

" Undo
set undodir=~/.vim/undo
set undofile

" Search
set ignorecase
set smartcase
set infercase
set hlsearch
set incsearch
set wrapscan

" Interface
set ruler
set scrolloff=5
set mouse=a
set number
set cursorline
autocmd vimrc WinEnter * setlocal cursorline
autocmd vimrc WinLeave * setlocal nocursorline
set colorcolumn=80

" Wrap h l normal
set whichwrap+=h,l

" Matching brackets :
set showmatch
set matchtime=2
let g:loaded_matchparen=1

" No redraw when executing macros :
set lazyredraw

" Backspace :
set backspace=indent,eol,start

" No bells, please!
set noerrorbells visualbell t_vb=
autocmd vimrc GUIEnter * set visualbell t_vb=

" Wildmenu :
set wildmenu
set wildmode=longest,list:longest
set wildignore=*.o,*~,*.pyc,*.jpg,*.jpeg,*.JPG,*.png,*.xcf,*.gif,*.bmp,*.pdf,*.beam,*.ibc

" Folding
set foldmethod=indent
set foldlevel=99

" Buffers
set switchbuf=useopen,usetab
set noequalalways

" Splits :
set splitright
set splitbelow

" Wrapping & indent
set autoindent
set copyindent
set wrap
set linebreak
set nocindent
set cinoptions+=g1,h1
set breakindent
autocmd vimrc BufRead,BufNewFile *.marko setfiletype html
autocmd vimrc Filetype markdown,python setlocal tw=79
autocmd vimrc Filetype html,htmldjango setlocal tw=0
autocmd vimrc BufNewFile,BufRead *.r2,*.r3,*.rbl,*.reb,*.red setfiletype rebol
autocmd vimrc BufNewFile,BufRead *.ipkg setfiletype idris
autocmd vimrc Filetype ocaml setlocal commentstring=(*%s*)

" Whitespace
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Show invisibles :
set list
set listchars=tab:▸\ ,eol:¬

" Make
set makeprg=[[\ -f\ Makefile\ ]]\ &&\ make\ \\\|\\\|\ make\ -C\ ..  
autocmd vimrc Filetype java setlocal makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
" Shift-F9 to !make
map [18;2~ :!make<CR>

" Making vim look for tags in parent directories :
set tags=./tags;~

" Completion
set complete=.,b,u,]
set completeopt=menu
set pumheight=5
set iskeyword+=-
autocmd vimrc InsertEnter * set noignorecase
autocmd vimrc InsertLeave * set ignorecase

" Omni :
" set omnifunc=syntaxcomplete#Complete

" Only highlight syntax on the first 200 columns:
set synmaxcol=200

" Fix markdown
hi clear markdownError
hi link markdownError Normal
hi clear markdownCode
hi link markdownCode Normal
hi clear markdownCodeBlock
hi link markdownCodeBlock Normal
hi clear markdownItalic
hi link markdownItalic Normal

" GUI tweaks
if has('gui_running')
    " Scrollbars, menu and toolbar must go:
    set guiheadroom=0
    set guioptions=a
    " Font
    " set guifont=Liberation\ Mono\ 9
    " set guifont=Fixed\ 8
    " set guifont=Anonymous\ Pro\ 10
    " set showtabline=0
endif

" Statusline
" the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline=\ %{winnr()}\ %<%{expand('%:h:t')}/%t\ %h%y%r%m\ %{exists('g:loaded_fugitive')?fugitive#head(6):''}\ %=\ %{expand('#:t')}\ %P
set laststatus=2 " Show even in last window

" Paste/Nopaste
set pastetoggle=<Leader>tp

" Mappings
" Unmappings {{{
" - No K in visual
vnoremap K <nop>
" - No join in visual
vnoremap J <nop>
nnoremap [ <nop>
nnoremap ] <nop>
" }}}
" Search-related {{{
" Magic
nnoremap / /\m
" Vimgrep
nnoremap <Space>/ :vimgrep // %<Left><Left><Left>
" Previous on <Leader>/
nnoremap <Leader>/ /<C-R>/
" - Jump prev/next not leaving search command mode:
cnoremap <C-N> <CR>/<C-P>
cnoremap <C-O> <CR>NN/<C-P>
" - Subsitute word under cursor
nnoremap <LocalLeader># :%s /<C-R><C-W>//g<Left><Left>
nnoremap <LocalLeader>* :%s /<C-R><C-W>//g<Left><Left>
" - Substitute last search pattern
nnoremap <LocalLeader>/ :%s /<C-R>///g<Left><Left>
" zz:
nnoremap n nzOzz
nnoremap N NzOzz
" }}}
" Help-related {{{
nnoremap <C-W><C-h> :help <C-r><C-w><CR>
nnoremap <Leader><C-h> :help <C-r><C-w><CR>
cab vh vert help
" }}}
" <C-W>-related {{{
" - No more c-w
nmap <Space> <C-W>
vmap <Space> <C-W>
" - Secure <C-W>o:
nnoremap <C-W>O <C-W>o
nnoremap <C-w>o <nop>
" - Switch & maximise window:
nnoremap <C-W>gj <C-W>j<C-W>_
nnoremap <C-W>gk <C-W>k<C-W>_
" nnoremap <C-W>gl <C-W>l<C-W>_
" nnoremap <C-W>gh <C-W>h<C-W>_
" - Keep ft for new windows
function! NewWindow(win_cmd)
    let l:prev_ft = &filetype
    exec a:win_cmd
    exec 'set ft=' . l:prev_ft
endfunction
nnoremap <silent> <C-W>n :call NewWindow("new")<CR>
nnoremap <silent> <C-W>N :call NewWindow("vnew")<CR>
" - Move window:
noremap <silent>  <C-W>gh :call WindowMove("h")<CR>
noremap <silent>  <C-W>gl :call WindowMove("l")<CR>
" Close all
nnoremap <C-W>Q :qa<CR>
" Write
nnoremap <Space>w :w<CR>
" Write & close
nnoremap <Space>W :wq<CR>
" Edit
nnoremap <C-W>e :e <C-R>=expand('%:h').'/'<CR><C-D>
nnoremap <Leader><C-W>e :e <C-R>=expand('%:h').'/'<CR><C-D>
" Sp
nnoremap <Leader><C-W>s :sp <C-R>=expand('%:h').'/'<CR><C-D>
" Vs
nnoremap <Leader><C-W>v :vs <C-R>=expand('%:h').'/'<CR><C-D>
" C-W #
nnoremap <C-W># :sp #<CR>
" + / -
nnoremap <Space>+ 10<C-W>+
nnoremap <Space>- 10<C-W>-
" Prev window:
nnoremap <C-w><C-w> <C-w>p
" Fold everything:
nnoremap z<Space> zM
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
" }}}
" Insert-mode-related {{{
" - Smaller undo chunks:
inoremap . .<C-g>u
inoremap , ,<C-g>u
inoremap ? ?<C-g>u
inoremap ! !<C-g>u
inoremap <C-w> <C-g>u<C-w>
inoremap <C-r> <C-g>u<C-r>
" - Mouse insert made easier :
nnoremap <MiddleMouse> a<MiddleMouse><Esc>
inoremap <MiddleMouse> <MiddleMouse><Esc>
vnoremap <MiddleMouse> c<MiddleMouse><Esc>
" - Keyboard insert
inoremap  <Esc>:set paste<CR>i<C-r>*<Esc>:set nopaste<CR>'[=']
" - Insert-mode surround PREVIOUS word with backticks:
imap <C-g><C-b> <Esc>bysw`Ea
" - Insert-mode uppercase prev word:
imap <C-g><C-u> <Esc>bgUwgi
" - F1 for digraphs
inoremap <F1> <C-k>
" - Kill line on i_CTRL-k
inoremap <C-k> <C-O>D
" - Move up/down to the end of the line on M-k / M-j in insert
inoremap <M-j> <Esc>jA
inoremap <M-k> <Esc>kA
" insert word of the line above (C-Y improved)
imap <expr> <c-y> matchstr(getline(line('.')-1), '\%' . virtcol('.') . 'v\%(\k\+\s\=\\|.\)')
" - Insert mode paste default:
imap <C-R><C-R> <C-R>"
" - Insert show regs:
inoremap <C-R><Space> <Esc><C-O>:reg<CR>
" Easier completion:
" inoremap <C-f> <C-x><C-f> " Conflicts with tpope/vim-rsi
inoremap <C-l> <C-x><C-l>
inoremap <M-w> <C-x><C-o>
" kill-word for gvim:
inoremap <C-BS> <C-W>
" Paste + with preceding >
inoremap <C-R>> <Esc>0C<C-R>+<Esc>I> <Esc>
" Insert system()
inoremap <C-R>( <C-R>=system('')<Left><Left>
" Insert mode pseudo digraphs
inoremap <C-c>in ∈
inoremap <C-c>sum Σ
inoremap <C-c>any ∀
inoremap <C-c>lam λ
inoremap <C-c>> ⇒
inoremap <C-c><> ↔
inoremap <C-c>j ↓
inoremap <C-c>k ↑
inoremap <C-c>h ←
inoremap <C-c>l →
inoremap <C-c>nn ñ
" }}}
" Normal-mode-related {{{
" - Y to behave like C & D :
map Y y$
" - Q for ^:
map Q ^
" - <Leader>Q for macros:
nnoremap <Leader>Q q
" - q for %:
map q %
" - Add newlines before and after :
" nnoremap [<Space> O<Esc>j
nnoremap ]<Space> o<Esc>k
" - Join up
nnoremap K -J
" - Kill till EoL from normal
nnoremap <Leader><C-k> d$
" - Swap parameters:
" nnoremap <Leader>s, "qdt,dwt)p"qp
" - Indent everything:
nnoremap =A gg=G``
" Improved pastes:
nnoremap <Leader>p "_ddP
vnoremap <Leader>p "_dP
" Enter insert mode @ the end:
nnoremap ga GA
" Zoom down:
nnoremap zd zb9<C-E>9<C-E>
" Zoom up:
nnoremap ze zt6<C-y>6<C-y>
" HL
nnoremap <Leader>eh :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
" Echo :pwd
nnoremap <Leader>ed :pwd<CR>
" Rightmouse
nmap <RightMouse> <LeftMouse><RightMouse>
imap <RightMouse> <Esc><RightMouse>
" Clear Search with mouse
nnoremap <C-LeftMouse> :let @/=""<CR>
" Undo tabspace
nnoremap <Tab><Space> u
" Repeat macro with alt-y
nnoremap <M-y> @@
" Open term
nnoremap <Leader><Space>n :term ++rows=10<CR>
nnoremap <Leader><Space>N :above term ++rows=10<CR>
nnoremap <Leader><Space>s :term<CR>
nnoremap <Leader><Space>S :above term<CR>
nnoremap <Leader><Space>v :vert term<CR>
" Neither works:
" nnoremap <Leader><Space>V :vert term<CR><C-w><C-w><C-w>x<C-w><C-w>
" nnoremap <Leader><Space>V :botright term

" repeat f/F (";" is leader)
nnoremap <M-;> ;
vnoremap <M-;> ;
" nnoremap , ;
" }}}
" Commandline-related {{{
" Previous on <Leader>:
nnoremap <Leader>: :<C-P>
" - Directory of the current file :
cnoremap %% <C-R>=expand('%:h').'/'<CR>
" - Prev command with a bang:
"   Does work in all cases except when it's the first command.
cnoremap $$ <C-F>kk$ea!<Esc><C-C><End>
" - Args of a previous command
cnoremap !$ <C-F>k0f y$G<C-C><End><C-R>"
" }}}
" Normal mode shortcuts for commandline commands {{{
" - noh:
nnoremap <Leader>n :let @/=""<CR>
" - Next/prev:
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
nnoremap <C-w>> :ne<CR>
nnoremap <C-w>< :prev<CR>
" Toggle scrollbind:
nnoremap <Leader>tb :windo set scrollbind!<CR>
" Toggle scrolloff mode:
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>
" Explorer
" nnoremap <silent> - :silent! Sex<CR>
" nnoremap <silent> _ :silent! Explore<CR>
" let g:netrw_liststyle = 3
" Cd to bash dir and file dir
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <Leader>cg :cd `pwd`<CR>:pwd<CR>
" Regs
nnoremap <C-W>" :reg<CR>
" Go line
nnoremap <Leader>gl :<C-R><C-W><CR>
" Alt file
nnoremap <C-W>a <C-^>
" Xpdf gotoPage
nnoremap [gl :silent! VimProcBang xpdf -remote defaultServer -exec gotoPage\(<C-R><C-W>\)<CR>
" Up / down
nnoremap OA 3<C-Y>
nnoremap OB 3<C-E>
" Source .plugs.vimrc:
nnoremap <F6> :source ~/.plugs.vimrc<CR>
command! ReloadVimrc :source ~/.plugs.vimrc
" Refresh
nnoremap <F1> :e!<CR>zz
" Run cmd
nnoremap <M-!> :!
" :ls
nnoremap <M-o> :ls<CR>:b<Space>
" :bn :bp
nnoremap <Leader>P :bp<CR>
nnoremap <Leader>N :bn<CR>
" :bd
nnoremap <Leader>q :bd<CR>
" :jumps
nnoremap <M-O> :ju<CR>
" <C-t>
nnoremap <silent> <C-t> <C-i>
" }}}
" Visual-mode-related {{{
" - select last paste visually
nnoremap <expr> vp '`[' . strpart(getregtype(), 0, 1) . '`]'
" - Yank to +:
vnoremap <C-Y> "+y
vnoremap <Leader>y "+y
" - Propagate "" to "+ :
nnoremap <silent> <Leader>y :let @+=@"<CR>:echo 'Yanked ' .
            \ Pluralize('line', len(split(@+, '\n'))) . ' to +.'<CR>
" - Yank to ":
vnoremap <LeftRelease> "*y<LeftRelease>
" Narrowregion-like:
vnoremap <Leader>nr y<C-W>npk"_dd
" }}}
" Source {{{
autocmd vimrc FileType vim vnoremap <buffer> X y:execute @@<cr>:echo 'Sourced selection.'<cr>
autocmd vimrc Filetype vim nnoremap <buffer> X ^vg_y:execute @@<cr>:echo 'Sourced line.'<cr>
autocmd vimrc FileType haskell nnoremap <buffer> X :Shell xmonad --recompile<CR>
" }}}
" Tabs-related {{{
" Switch between tabs:
nnoremap <Space>1 1gt
nnoremap <Space>2 2gt
nnoremap <Space>3 3gt
nnoremap <Space>4 4gt
nnoremap <Space>5 5gt
nnoremap <Space>6 6gt
nnoremap <Space>7 7gt
nnoremap <Space>8 8gt
nnoremap <Space>9 :tabl<CR>
" Open tab:
nnoremap <C-W>c :tabe<CR>
" Most recent tab / previous tab:
let g:lasttab = 1
nnoremap <Space><Space> :exe "tabn ".g:lasttab<CR>
autocmd vimrc TabLeave * let g:lasttab = tabpagenr()
" }}}

" Functions & bits
" Toggle-related functions and mappings {{{
function! BackgroundToggle()
    if(&background == 'dark')
        set background=light
    else
        set background=dark
    endif
endfunc
nnoremap <Leader>bg :call BackgroundToggle()<CR>

function! ToggleRNU()
    if(&rnu == 1)
        set nornu
    else
        set rnu
    endif
endfunc
nnoremap <Leader>tr :call ToggleRNU()<CR>

function! HardWrapToggle()
    if(&textwidth == 79)
        set tw=0
    else
        set tw=79
    endif
    echo &textwidth
endfunc
nnoremap <Leader>tw :call HardWrapToggle()<CR>

function! DiffToggle()
    if(&diff)
      diffoff
    else
      diffthis
    endif
endfunc
nnoremap <silent> <Leader>td :call DiffToggle()<CR>

function! ToggleVerbose()
    if(&verbose == 0)
        set verbose=1
    else
        set verbose=0
    endif
    echo &verbose
endfunc
nnoremap <Leader>tv :call ToggleVerbose()<CR>
" }}}
" From suckless.vim: WindowMove {{{
function! WindowMove(direction)
  let winnr = winnr()
  let bufnr = bufnr("%")

  if a:direction == "j"        " move window to the previous row
    wincmd j
    if winnr() != winnr
      "exe "normal <C-W><C-X>"
      wincmd k
      wincmd x
      wincmd j
    endif

  elseif a:direction == "k"    " move window to the next row
    wincmd k
    if winnr() != winnr
      wincmd x
    endif

  elseif "hl" =~ a:direction   " move window to the previous/next column
    exe "wincmd " . a:direction
    let newwinnr = winnr()
    if newwinnr == winnr
      " move window to a new column
      exe "wincmd " . toupper(a:direction)
    else
      " move window to an existing column
      wincmd p
      wincmd c
      " if t:windowMode == "S"
      "   res " maximize window height
      " endif
      exe newwinnr . "wincmd w"
      wincmd n
      " if t:windowMode == "S"
      "   res " maximize window height
      " endif
      exe "b" . bufnr
    endif

  endif
endfunction
" }}}
" :Date {{{
function! GetDate(...)
    let datestring = ""
    if (a:0 == 1)
        let datestring = a:1
    endif
    if (len(datestring) == 0 )
        let datestring = input("> ")
    endif
    echo "\n" . system("date --date='" . datestring . "'")
endfunc
command! -nargs=? Date :call GetDate(<q-args>)
" }}}
" :Shell {{{
function! s:ExecuteInShell(command)
  let command = join(map(split(a:command), 'expand(v:val)'))
  let winnr = bufwinnr('^' . command . '$')
  silent! execute  winnr < 0 ? 'botright new ' . fnameescape(command) : winnr . 'wincmd w'
  setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap number
  echo 'Execute ' . command . '...'
  silent! execute 'silent %!'. command
  silent! execute 'resize ' . line('$')
  silent! redraw
  silent! execute 'au BufUnload <buffer> execute bufwinnr(' . bufnr('#') . ') . ''wincmd w'''
  " silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . command . ''')<CR>'
  echo 'Shell command ' . command . ' executed.'
endfunction
command! -complete=shellcmd -nargs=+ Shell call s:ExecuteInShell(<q-args>)
" }}}
" Change & Paste: cp{motion} {{{
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction
" }}}
" Trailing {{{
function! RemoveTrailingWhitespace()
    %s/\s\+$//e
endfunc
command! Trailing :call RemoveTrailingWhitespace()
" }}}
" Move to next/prev tab {{{
function! MoveToPrevTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() != 1
    close!
    if l:tab_nr == tabpagenr('$')
      tabprev
    endif
    sp
  else
    close!
    exe "0tabnew"
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc

function! MoveToNextTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() < tab_nr
    close!
    if l:tab_nr == tabpagenr('$')
      tabnext
    endif
    sp
  else
    close!
    tabnew
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc
function! Pluralize(word, count)
    let l:plural = ""
    if a:count > 1
        let l:plural = "s"
    endif
    return a:count . " " .  a:word . l:plural
endfunction

nnoremap <Leader>tl :call MoveToNextTab()<CR>
nnoremap <Leader>th :call MoveToPrevTab()<CR>
" }}}
" :sp multiple files {{{
function! Split(...)
    if(a:0 == 0)
        sp
    else
        let i = a:0
        while(i > 0)
            execute 'let file = a:' . i
            execute 'sp ' . file
            let i = i - 1
        endwhile
    endif
endfunction
command! -nargs=* -complete=file Sp call Split(<f-args>)
cab sp Sp
" }}}
" :e multiple files {{{
function! Edit(...)
    if(a:0 == 0)
        e
    else
        let file = a:1
        execute 'e ' . file
        let i = a:0
        while(i > 1)
            execute 'let file = a:' . i
            execute 'sp ' . file
            let i = i - 1
        endwhile
    endif
endfunction
command! -nargs=* -complete=file Edit call Edit(<f-args>)
"}}}
" :vs multiple files {{{
function! VSplit(...)
    if(a:0 == 0)
        vs
    else
        let i = a:0
        while(i > 0)
            execute 'let file = a:' . i
            execute 'vs ' . file
            let i = i - 1
        endwhile
    endif
endfunction
command! -nargs=* -complete=file Vs call VSplit(<f-args>)
cab vs Vs
" }}}
" :fsp split and name - force split {{{
function! FSplit(...)
    if(a:0 == 0)
        sp
    else
        let i = a:0
        while(i > 0)
            execute 'let file = a:' . i
            execute 'w ' . file
            execute 'sp ' . file
            let i = i - 1
        endwhile
    endif
endfunction
command! -nargs=* -complete=file Fsp call FSplit(<f-args>)
cab fsp Fsp
" Spelling
function! Spelling()
    setlocal spell!
    if &spell
        set complete+=kspell
        echo "Spell mode enabled"
    else
        set complete-=kspell
        echo "Spell mode disabled"
    endif
endfunction
command! Spelling call Spelling()
nnoremap <Space><Enter> :call Spelling()<CR>
" }}}
" Vsplit tag {{{
function! FollowTag()
  if !exists("w:tagbrowse")
    vsplit
    let w:tagbrowse=1
  endif
  execute "tag " . expand("<cword>")
endfunction
nnoremap <Leader>} :call FollowTag()<CR>
" }}}

" Commands 
" Commands {{{
" - Browsers 
command! Chr    execute "!chromium --incognito % &"
command! Ff     execute "!firefox % &"
" - Mksession to .vim/sessions/last.vim:
command! Mklast execute "mksession! ~/.vim/sessions/last"
" - Save and source
command! Source silent! :w | :source %
autocmd vimrc FileType vim nnoremap <buffer> <Space>x :Source<CR>:echo 'Sourced file.'<CR>
autocmd vimrc FileType vader nnoremap <buffer> <Space>x :Vader<CR>
" - Random
command! RandomLine execute 'normal! '.(matchstr(system('od -vAn -N3 -tu4 /dev/urandom'), '^\_s*\zs.\{-}\ze\_s*$') % line('$')).'G'
" - Saveas
cab ww saveas
" }}}

if filereadable(glob("~/.local.vimrc")) 
    source ~/.local.vimrc
endif
