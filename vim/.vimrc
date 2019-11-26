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

" TODO Needs more work. Breaks on not being able to create tmp file?
set makeprg=test\ -f\ Makefile\ &&\ make\ \\\|\\\|\ make\ -C\ ..  

set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
" Shift-F9 to make (TODO remove when makeprg works with dwm)
map [18;2~ :make<Return>:copen<Return>
map <F9> :terminal make<CR>

autocmd vimrc Filetype java setlocal makeprg=javac\ %

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
    set noantialias
    set guifont=Hack\ 8
    " set showtabline=0
endif

" Statusline
" the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
function! ExecutableFlagCurrentFile()
    if executable(expand('%'))
        return ' x'
    else
        return ''
    endif
endfunction

set statusline=\ %{winnr()}\ %<%{expand('%:h:t')}/%t\ %h%y%r%m%{ExecutableFlagCurrentFile()}\ %{exists('g:loaded_fugitive')?fugitive#head(6):''}\ %{bufnr()}\ %=\ %{expand('#:t')}\ %P
set laststatus=2 " Show even in last window

" Paste/Nopaste
set pastetoggle=<Leader>tp

" Use the refactored mappings!
runtime mappings.vim

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
" }}}
" Spelling {{{
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
inoremap <C-g><Space> <Esc>:call Spelling()<CR>a
inoremap <C-g><C-l> <C-g>u<Esc>[s1z=`]a<C-g>u
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
