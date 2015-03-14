" vim: foldmethod=marker foldlevel=0

filetype plugin indent on
syntax on

let mapleader="	"


" No backup
set nobackup
set nowritebackup
set noswapfile
set viminfo='0,:0,<0,@0,f0,/0

" Sessions :
set ssop-=options
set ssop-=localoptions
set ssop-=buffers
" if has('autocmd')
"     autocmd SessionLoadPost * tabdo exe 'windo exe "normal zz"'
" endif

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch
set wrapscan

" Interface
set ruler
set scrolloff=5
set mouse=a
set number
set cursorline
if has('autocmd')
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
endif
set colorcolumn=80

" Man.vim
runtime! ftplugin/man.vim

" Matching brackets :
set showmatch
set matchtime=2
let loaded_matchparen=1

" No redraw when executing macros :
set lazyredraw

" Backspace :
set backspace=indent,eol,start

" No bells, please!
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

" Wildmenu :
set wildmenu
set wildmode=longest,list:longest
set wildignore=*.o,*~,*.pyc,*.jpg,*.jpeg,*.JPG,*.png,*.xcf,*.gif,*.bmp,*.pdf

" Folding
set foldmethod=indent
set foldlevel=99

" Buffers
set switchbuf=useopen,usetab

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
if has('autocmd')
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    autocmd Filetype markdown,python setlocal tw=79
    autocmd Filetype html,htmldjango setlocal tw=0
endif

" Whitespace
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
if has('autocmd')
    autocmd Filetype cpp setlocal tabstop=2 shiftwidth=2
endif

" Show invisibles :
set list
set listchars=tab:▸\ ,eol:¬

" Make
if has('autocmd')
    autocmd Filetype java set makeprg=javac\ %
endif
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>

" Making vim look for tags in parent directories :
set tags=./tags;~

" Completion
set complete=.,b,u,]
set completeopt=menu
set pumheight=5
set iskeyword+=-

" Omni :
" set omnifunc=syntaxcomplete#Complete

" Colors
if filereadable(glob("~/.vimrc-colors")) 
    source ~/.vimrc-colors
else
    silent! colorscheme desert
endif

" Fix markdown
hi link markdownError Normal
hi link markdownItalic Normal

" GUI tweaks
if has('gui_running')
    " Scrollbars, menu and toolbar must go:
    set guiheadroom=0
    set guioptions=a
    " Font
    set guifont=Liberation\ Mono\ 9
    " set guifont=Fixed\ 8
    " set guifont=Anonymous\ Pro\ 10
    " set showtabline=0
endif

" Statusline
" the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline=%n\ %<%{expand('%:h:t')}/%t\ %h%y%r%m\ %{exists('g:loaded_fugitive')?fugitive#head(6):''}\ %=%{expand('#:t')}\ %P
set laststatus=2 " Show even in last window

" Mappings
" Unmappings {{{
" - No ex-mode for now
nnoremap Q <nop>
" - No accidental macro recording
nnoremap <Leader>q q
nnoremap q <nop>
" - No K in visual
vnoremap K <nop>
" - No join in visual
vnoremap J <nop>
" }}}
" Search-related {{{
" nnoremap / /\v
nnoremap <Leader>/ /<C-R>/
" - Search peculiarities:
cnoremap <C-N> <CR>/<C-P>
cnoremap <C-O> <CR>NN/<C-P>
" - Subsitute word under cursor
nnoremap <Leader>* :%s /<C-R><C-W>//g<Left><Left>
" - Substitute last search pattern
nnoremap <Leader># :%s /<C-R>///g<Left><Left>
" }}}
" Help-related {{{
nnoremap <F1> :help <C-r><C-w>
nnoremap [11^ :Man 
nnoremap <C-F1> :Man 
" }}}
" <C-W>-related {{{
" - No more c-w
nmap <Space> <C-W>
" - Switch & maximise window:
nnoremap <C-W>gj <C-W>j<C-W>_
nnoremap <C-W>gk <C-W>k<C-W>_
" nnoremap <C-W>gl <C-W>l<C-W>_
" nnoremap <C-W>gh <C-W>h<C-W>_
" - New vertical window
nnoremap <C-W>N :vnew<CR>
" - Move window:
noremap <silent>  <C-W>gh :call WindowMove("h")<CR>
noremap <silent>  <C-W>gl :call WindowMove("l")<CR>
" Close all
nnoremap <C-W>Q :qa<CR>
" Write
nnoremap <C-W>w :w<CR>
" Write & close
nnoremap <Leader>wq :wq<CR>
" Edit
nnoremap <C-W>e :e <C-R>=expand('%:h').'/'<CR><C-D>
" Sp
nnoremap <C-W>s :sp <C-R>=expand('%:h').'/'<CR><C-D>
" Vs
nnoremap <C-W>v :vs <C-R>=expand('%:h').'/'<CR><C-D>
" Unite :cclose :lclose and <C-W>z
nnoremap <C-W>z :cclose<CR>:lclose<CR><C-W>z
" }}}
" Insert-mode-related {{{
" - Mouse insert made easier :
nnoremap <MiddleMouse> a<MiddleMouse><Esc>
inoremap <MiddleMouse> <MiddleMouse><Esc>
vnoremap <MIddleMouse> c<MiddleMouse><Esc>
" - Insert-mode surround PREVIOUS word with backticks:
imap <C-g><C-b> <Esc>bysw`Ea
" - Insert-mode uppercase prev word:
imap <C-g><C-u> <Esc>bgUwgi
" - Insert-mode emacs maps:
inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A
" - Improve default i_CTRL-k i_CTRL-j
inoremap <C-k> <Esc>kA
inoremap <C-j> <Esc>jA
" insert word of the line above (C-Y improved)
imap <expr> <c-y> matchstr(getline(line('.')-1), '\%' . virtcol('.') . 'v\%(\k\+\s\=\\|.\)')
" - Insert mode paste default:
inoremap <C-R><Enter> <C-R>"
" - Insert show regs:
inoremap <C-R><Space> <Esc><C-O>:reg<CR>
" Easier completion:
inoremap <C-f> <C-x><C-f>
inoremap <C-l> <C-x><C-l>
" kill-word for gvim:
inoremap <C-BS> <C-W>
" }}}
" Normal-mode-related {{{
" - Y to behave like C & D :
map Y y$
" - Add newlines before and after :
nnoremap [<Space> O<Esc>j
nnoremap ]<Space> o<Esc>k
" - Join up
nnoremap K -J
nnoremap gK -gJ
" - Swap parameters:
nnoremap <Leader>s, "qdt,dwt)p"qp
" - Indent everything:
nnoremap =A gg=G``
" Improved pastes:
nnoremap <Leader>p "_ddP
vnoremap <Leader>p "_dP
" }}}
" Commandline-related {{{
nnoremap <Leader>: :<C-P>
" - Directory of the current file :
cnoremap %% <C-R>=expand('%:h').'/'<CR>
" - Prev command with a bang:
"   Does work in all cases except when it's the first command.
cnoremap $$ <C-F>kk$ea!<Esc><C-C><End>
" - Args of a previous command
cnoremap !$ <C-F>k0f y$G<C-C><End><C-R>"
" - Commandline emacs maps:
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" }}}
" Normal mode shortcuts for commandline commands {{{
" - noh:
nnoremap <Leader>n :let @/=""<CR>
" - Next/prev:
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
" Toggle scrollbind:
nnoremap <Leader>tb :windo set scrollbind!<CR>
" Toggle scrolloff mode:
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>
" Explorer
nnoremap <silent> - :silent! Sex<CR>
nnoremap <silent> _ :silent! Explore<CR>
" Regs
nnoremap <C-W>" :reg<CR>
" }}}
" Visual-mode-related {{{
" - Visual search
vnoremap * y/<C-R>"<CR>
" - select last paste visually
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
" - Select line without identation and EOL
nnoremap <Leader>v ^v$h
" - Yank to +:
vnoremap <C-Y> "+y
" - Yank to ":
vnoremap <LeftRelease> "*y<LeftRelease>
" Narrowregion-like:
vnoremap <Leader>nr y<C-W>npk"_dd
" }}}
" Source {{{
if has('autocmd')
    autocmd FileType vim vnoremap <Leader>S y:execute @@<cr>:echo 'Sourced selection.'<cr>
    autocmd Filetype vim nnoremap <Leader>S ^vg_y:execute @@<cr>:echo 'Sourced line.'<cr>
endif
" }}}
" Filetype bindings {{{
nnoremap <silent> <Leader>ttd :se ft=htmldjango<CR>
nnoremap <silent> <Leader>tth :se ft=html<CR>
nnoremap <silent> <Leader>ttp :se ft=python<CR>
nnoremap <silent> <Leader>ttm :se ft=markdown<CR>
nnoremap <silent> <Leader>ttv :se ft=vim<CR>
nnoremap <silent> <Leader>ttcss :se ft=css<CR>
nnoremap <silent> <Leader>ttco :se ft=conf<CR>
nnoremap <silent> <Leader>ttcpp :se ft=cpp<CR>
nnoremap <silent> <Leader>ttj :se ft=javascript<CR>
nnoremap <silent> <Leader>ttb :se ft=sh<CR>
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
" Open tab
nnoremap <C-W>c :tabe<CR>
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
nnoremap <Leader>hw :call HardWrapToggle()<CR>
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
nnoremap <F3> :Shell 
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
" - Mark something as done (change dash to plus) {{{
function! MarkDone()
    " let l:ln=substitute(getline('.'), "^\(\s*\)\-", "\=submatch(1)" . "+", "g")
    call setline('.', substitute(getline('.'), "^\\(\\s*\\)-",
                \ "\\=submatch(1).'+'", ""))
endfunction
nnoremap <Leader>gd :call MarkDone()<CR>
vnoremap <Leader>gd :call MarkDone()<CR>
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

nnoremap <Leader>th :call MoveToNextTab()<CR>
nnoremap <Leader>tl :call MoveToPrevTab()<CR>
" }}}

" Commands 
" Commands {{{
" - Browsers 
command! Chr    execute "!chromium --incognito % &"
command! Ff     execute "!firefox % &"
" - Mksession to .vim/sessions/last.vim:
command! Mklast execute "mksession! ~/.vim/sessions/last.vim"
" - No more fucking up
command! WQ wq
command! Wq wq
command! W w
command! Q q
command! Qa qa
" - Save and source
command! Source silent! :w | :source %
nnoremap <Leader><Leader>S :Source<CR>:echo 'Sourced file.'<CR>
" }}}

if filereadable(glob("~/.vimrc-local")) 
    source ~/.vimrc-local
endif
