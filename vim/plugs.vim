" vim: foldmethod=marker foldlevel=0

" Big Refactor still in progress.

scriptencoding utf-8

call plug#begin('~/.vim/plugs')

augroup plugs
    autocmd!
augroup END


" Workaround for Ultisnips' :py3-after-using-:python error.
" https://github.com/SirVer/ultisnips/pull/1129#issuecomment-555899587
call has('python3')


" ||
" || Deps
" ||

" {{{

Plug 'kana/vim-textobj-user'

Plug '~/.vim/conf/_vim-operator-user/'
Plug 'kana/vim-operator-user'

Plug 'vim-scripts/ingo-library'

Plug 'tpope/vim-repeat'

Plug 'arecarn/selection.vim'

" }}}


" ||
" || Fuzzy-select
" ||

" {{{

Plug '~/.vim/conf/_fzf.vim/'
Plug 'junegunn/fzf.vim'
" Plug '~/.ghq/github.com/junegunn/fzf'
Plug 'junegunn/fzf'

Plug 'kien/ctrlp.vim' " {{{
map s <NOP>
let g:ctrlp_map = 's0'
" let g:ctrlp_cmd = 'CtrlPMixed'
" nnoremap se :CtrlP <C-R>=expand('%:p:h')<CR><CR>
" I never use this:
" nnoremap st :CtrlPBufTagAll<CR>
" nnoremap st :CtrlPTag<CR>
" nnoremap sn :CtrlPChange<CR>
let g:ctrlp_open_multiple_files = 'hj'
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = {
            \'dir': '\v&HOME/(music|video|editing|torrents|misc)|.git$'
            \}
" let g:ctrlp_user_command = ['.git/', 
"             \'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_extensions = ['sessions', 'filetype']
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_prompt_mappings  = {'PrtBS()' : ['<bs>', '<c-h>', '<>'],
            \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<Space>'],
            \ 'PrtCurRight()':        ['<right>'],
            \ 'AcceptSelection("v")': ['<c-v>', '<c-l>']}
let g:ctrlp_switch_buffer = 'E'
" }}}
Plug 'pielgrzym/ctrlp-sessions' " {{{
nnoremap sS :CtrlPSessions<CR>
let g:ctrlp_session_dir = '.vim/sessions'
nnoremap <C-w>s :MkS<CR>
" }}}
Plug 'mattn/ctrlp-register' " {{{
nnoremap s" :CtrlPRegister<CR>
inoremap <C-g><C-r> <C-O>:CtrlPRegister<CR>
" }}}

" }}}


" ||
" || Movement
" ||

" {{{

" The line between Movement and Textobjects is often blurry.

Plug 'Lokaltog/vim-easymotion' " {{{
" let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*():;"<>.,/?[]{}ABCDEFGHIJKLMNOPQRSTUVWXYZ'
" let g:EasyMotion_keys = 'asdkghlqwertyuiopbvnmcASDFGHJKLQWERTYUIOP1234fj'
let g:EasyMotion_keys = 'asdkghlqwertyuiopbvnmc1234fj'
let g:EasyMotion_leader_key = '\'
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1
let g:EasyMotion_do_special_mapping = 1
let g:EasyMotion_add_search_history = 0

map \\ <Plug>(easymotion-sn)
map \f <Plug>(easymotion-f)

map \r <Plug>(easymotion-repeat)
map \h <Plug>(easymotion-prev)
map \l <Plug>(easymotion-next)
" nmap <Leader>l <Plug>(easymotion-s)
" nmap \l <Plug>(easymotion-s2)
" nmap \l <Plug>(easymotion-overwin-line)
" <Plug>(easymotion-jumptoanywhere) |
" onoremap \k V<Plug>(easymotion-k)
" onoremap \j V<Plug>(easymotion-j)

" Don't use omap: many binds e.g. fugitive use c in operator-mode
nmap d" d\t"<Space><Esc>
nmap d' d\T"<Space><Esc>
nmap y" y\t"<Space><Esc>
nmap y' y\T"<Space><Esc>
nmap c" c\t"<Space>
nmap c' c\T"<Space>

nmap dr d\t)<Space><Esc>
nmap dR d\T(<Space><Esc>
nmap yr y\t)<Space><Esc>
nmap yR y\T(<Space><Esc>
nmap cr c\t)<Space>
nmap cR c\T(<Space>
" }}}

Plug '~/.vim/conf/_vim-patternjump/'
Plug 'machakann/vim-patternjump'

" Depends on vim-scripts/ingo-library
Plug 'vim-scripts/JumpToLastOccurrence' " {{{
" ,f ,F ,t ,T
" }}}

" TODO Rebind, add wildfire-water (reverse direction), change objects to full
" forms instead of inside-forms
" Plug 'gcmt/wildfire.vim' " {{{
" nmap <Leader><Enter> <Plug>(wildfire-quick-select)
" }}}

Plug 'fcpg/vim-shore'

Plug 'jeetsukumaran/vim-indentwise' " {{{
map gH <Plug>(IndentWisePreviousLesserIndent)
map gh <Plug>(IndentWiseNextLesserIndent)

map gL <Plug>(IndentWisePreviousGreaterIndent)
map gl <Plug>(IndentWiseNextGreaterIndent)

nnoremap <Leader>j gj
nnoremap <Leader>k gk
vnoremap <Leader>j gj
vnoremap <Leader>k gk

map gk <Plug>(IndentWisePreviousEqualIndent)
map gj <Plug>(IndentWiseNextEqualIndent)

map g[ <Plug>(IndentWisePreviousAbsoluteIndent)
map g] <Plug>(IndentWiseNextAbsoluteIndent)

map gK <Plug>(IndentWiseBlockScopeBoundaryBegin)
map gJ <Plug>(IndentWiseBlockScopeBoundaryEnd)
" }}}

" Plug 'wellle/targets.vim' " {{{
" let g:targets_separators = '. ; : + - ~ _ * \ |'
" }}}

Plug 'haya14busa/vim-edgemotion' " {{{
map <M-j> <Plug>(edgemotion-j)
map <M-k> <Plug>(edgemotion-k)
" Poor man's horizontal edgemotion
map <M-h> B
map <M-l> E
" }}}

Plug 'mwgkgk/CamelCaseMotion' " {{{
" Default mappings: ,w ,b ,e   i,w i,b i,e
" kill-small-word insert mode:
imap <C-g><C-w> <Esc>,bcw
" }}}

Plug 'andymass/vim-matchup' " {{{
" Jump to % of the file:
nnoremap ,, %
" }}}

" }}}


" ||
" || Textobjects
" ||

" {{{

Plug 'kana/vim-textobj-line' " {{{
let g:textobj_line_no_default_key_mappings = 1
nmap vv v<Plug>(textobj-line-i)

omap il <Plug>(textobj-line-i)
omap al <Plug>(textobj-line-a)
" }}}
Plug 'kana/vim-textobj-indent' " {{{
let g:textobj_indent_no_default_key_mappings = 1
xmap an  <Plug>(textobj-indent-a)
omap an  <Plug>(textobj-indent-a)
xmap in  <Plug>(textobj-indent-i)
omap in  <Plug>(textobj-indent-i)
xmap aN  <Plug>(textobj-indent-same-a)
omap aN  <Plug>(textobj-indent-same-a)
xmap iN  <Plug>(textobj-indent-same-i)
omap iN  <Plug>(textobj-indent-same-i)

" }}}
Plug '~/.vim/conf/_vim-textobj-lastpat/'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-entire' " {{{
let g:textobj_entire_no_default_key_mappings = 1
xmap iA <Plug>(textobj-entire-i)
omap iA <Plug>(textobj-entire-i)
xmap aA <Plug>(textobj-entire-a)
omap aA <Plug>(textobj-entire-a)
xmap A <Plug>(textobj-entire-a)
omap A <Plug>(textobj-entire-a)
" }}}

Plug 'kana/vim-textobj-function'
" Fallback for vim-textobj-function using syntax definitions:
" Plug 'haya14busa/vim-textobj-function-syntax'

Plug 'thinca/vim-textobj-between' " {{{
let g:textobj_between_no_default_key_mappings = 1
xmap ii <Plug>(textobj-between-i)
omap ii <Plug>(textobj-between-i)
xmap aa <Plug>(textobj-between-a)
omap aa <Plug>(textobj-between-a)
" }}}

Plug 'junegunn/vim-after-object' " {{{
autocmd plugs VimEnter * call after_object#enable('=', ':', '-', '#', ' ', ';', ',', '.' )
" }}}

Plug 'sgur/vim-textobj-parameter'

Plug 'akiyan/vim-textobj-xml-attribute'

Plug 'machakann/vim-textobj-equation'

" Depends on Lokaltog/vim-easymotion
Plug 'haya14busa/vim-easyoperator-line' " {{{
let g:EasyOperator_line_do_mapping = 0
nmap gy <Plug>(easyoperator-line-yank)
nmap gd <Plug>(easyoperator-line-delete)
" }}}

" }}}


" ||
" || Operators
" ||

" {{{

Plug '~/.vim/conf/_vim-surround/'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary' " {{{
nmap gcd yypkgccj
" }}}

Plug 'briandoll/change-inside-surroundings.vim' " {{{
" <Leader>ci by default
nnoremap cI :ChangeInsideSurrounding<CR>
" }}}

Plug 'arthurxavierx/vim-caser' " gsc, gss, gsk, ...

Plug 'tommcdo/vim-exchange'

Plug '~/.vim/conf/_sideways.vim/'
Plug 'AndrewRadev/sideways.vim'

Plug 'tyru/operator-star.vim' " {{{
nmap <Leader>*  <Plug>(operator-*)
nmap <Leader>g* <Plug>(operator-g*)
nmap <Leader>#  <Plug>(operator-#)
nmap <Leader>g# <Plug>(operator-g#)
" }}}

" Depends on tyru/open-browser.vim, kana/vim-operator-user
Plug 'sgur/vim-operator-openbrowser'" {{{
nmap gx <Plug>(operator-openbrowser)
" }}}

Plug 'mwgkgk/vim-operator-append' " {{{
map g<Leader>a <Plug>(operator-append)
" }}}
Plug 'mwgkgk/vim-operator-insert' " {{{
map g<Leader>i <Plug>(operator-insert)
" }}}

Plug '~/shop/oil/vim-operator-replacemode/' " {{{
nmap gr <Plug>(operator-replacemode)
" }}}

" }}}


" ||
" || Submodes
" ||

" {{{

Plug 'kana/vim-submode', {'on' : [] } " {{{
let g:submode_timeoutlen = 700

" The reason we do this is because it's before plug#end, and so the autoloads
" are otherwise unavailable.
" TODO Move to conf and split into files
silent! call plug#load('vim-submode')

call submode#enter_with('Remote↑↓', 'n', '', '[k', ':AsyncRun bro scrollUp<CR>')
call submode#map(       'Remote↑↓', 'n', '',  'k', ':AsyncRun bro scrollUp<CR>')
call submode#enter_with('Remote↑↓', 'n', '', '[j', ':AsyncRun bro scrollDown<CR>')
call submode#map(       'Remote↑↓', 'n', '',  'j', ':AsyncRun bro scrollDown<CR>')

call submode#enter_with('RemoteYT', 'n', '', '[l', ':AsyncRun bro ytForward5<CR>')
call submode#map(       'RemoteYT', 'n', '',  'l', ':AsyncRun bro ytForward5<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[L', ':AsyncRun bro ytForward10<CR>')
call submode#map(       'RemoteYT', 'n', '',  'L', ':AsyncRun bro ytForward10<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[;', ':AsyncRun bro ytForward20<CR>')
call submode#map(       'RemoteYT', 'n', '',  ';', ':AsyncRun bro ytForward20<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[h', ':AsyncRun bro ytBackward5<CR>')
call submode#map(       'RemoteYT', 'n', '',  'h', ':AsyncRun bro ytBackward5<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[H', ':AsyncRun bro ytBackward10<CR>')
call submode#map(       'RemoteYT', 'n', '',  'H', ':AsyncRun bro ytBackward10<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[g', ':AsyncRun bro ytBackward20<CR>')
call submode#map(       'RemoteYT', 'n', '',  'g', ':AsyncRun bro ytBackward20<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[<', ':AsyncRun bro ytFaster<CR>')
call submode#map(       'RemoteYT', 'n', '',  '<', ':AsyncRun bro ytFaster<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[>', ':AsyncRun bro ytSlower<CR>')
call submode#map(       'RemoteYT', 'n', '',  '>', ':AsyncRun bro ytSlower<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[<Space>', ':AsyncRun bro space<CR>')
call submode#map(       'RemoteYT', 'n', '',  '<Space>', ':AsyncRun bro space<CR>')

" call submode#enter_with('RemoteYT_I', 'i', '', '<C-u><C-y>', '<Esc>:silent!
" VimProcBang bro ytBackward5<CR>gi')
" call submode#map(       'RemoteYT_I', 'i', '', '<C-y>', '<Esc>:silent!
" VimProcBang bro ytBackward5<CR>gi')

" call submode#enter_with('RemoteYT_I', 'i', '', '<C-u><C-u>', '<Esc>:silent!
" VimProcBang bro space<CR>gi')
" call submode#map(       'RemoteYT_I', 'i', '', '<C-u>', '<Esc>:silent!
" VimProcBang bro space<CR>gi')

" call submode#enter_with('RemoteYT_I', 'i', '', '<C-u><C-i>', '<Esc>:silent!
" VimProcBang bro ytForward5<CR>gi')
" call submode#map(       'RemoteYT_I', 'i', '', '<C-i>', '<Esc>:silent!
" VimProcBang bro ytForward5<CR>gi')

" inoremap <C-u><C-t> <Esc>:AsyncRun bro ytPls<CR>gi

call submode#enter_with('RemoteZoom', 'n', '', '[zo', ':AsyncRun bro zoomOut<CR>')
call submode#map(       'RemoteZoom', 'n', '',   'o', ':AsyncRun bro zoomOut<CR>')
call submode#enter_with('RemoteZoom', 'n', '', '[zi', ':AsyncRun bro zoomIn<CR>')
call submode#map(       'RemoteZoom', 'n', '',   'i', ':AsyncRun bro zoomIn<CR>')

" call submode#enter_with('ScrollGo', 'n', '', ';k', '6<C-Y>6k')
" call submode#map(       'ScrollGo', 'n', '',  'k', '6<C-Y>6k')
" call submode#enter_with('ScrollGo', 'n', '', ';j', '6<C-E>6j')
" call submode#map(       'ScrollGo', 'n', '',  'j', '6<C-E>6j')

call submode#enter_with('ScrollStay', 'n', '', ']k', '3<C-Y>')
" call submode#enter_with('ScrollStay', 'n', '', ';k', '3<C-Y>')
call submode#map(       'ScrollStay', 'n', '',  'k', '3<C-Y>')
call submode#enter_with('ScrollStay', 'n', '', ']j', '3<C-E>')
" call submode#enter_with('ScrollStay', 'n', '', ';j', '3<C-E>')
call submode#map(       'ScrollStay', 'n', '',  'j', '3<C-E>')
" }}}

" }}}


" ||
" || Insert mode
" ||

" {{{

Plug '~/.vim/conf/_vim-rsi/'
Plug 'tpope/vim-rsi'

Plug '~/shop/oil/newliner/newliner-vim' " {{{
inoremap <expr>  newliner#newline()
" }}}

" }}}


" ||
" || Visual mode
" ||

" {{{

Plug 'kana/vim-niceblock'

Plug 'thinca/vim-visualstar'

Plug 't9md/vim-textmanip' " {{{
xmap <C-M-j> <Plug>(textmanip-move-down)
xmap <C-M-k> <Plug>(textmanip-move-up)
xmap <C-M-h> <Plug>(textmanip-move-left)
xmap <C-M-l> <Plug>(textmanip-move-right)
nmap <C-M-k> V<Plug>(textmanip-move-up)
nmap <C-M-j> V<Plug>(textmanip-move-down)
nmap <C-M-h> V<Plug>(textmanip-move-left)
nmap <C-M-l> V<Plug>(textmanip-move-right)

nmap g<C-M-k> <Plug>(textmanip-duplicate-up)
nmap g<C-M-j> <Plug>(textmanip-duplicate-down)
xmap g<C-M-k> <Plug>(textmanip-duplicate-up)
xmap g<C-M-j> <Plug>(textmanip-duplicate-down)

nmap <Leader><C-M-k> <Plug>(textmanip-blank-above)
nmap <Leader><C-M-j> <Plug>(textmanip-blank-below)
xmap <Leader><C-M-k> <Plug>(textmanip-blank-above)
xmap <Leader><C-M-j> <Plug>(textmanip-blank-below)
" }}}

" }}}


" ||
" || Highlight
" ||

" {{{

" Plug 'inkarkat/vim-SyntaxRange' " {{{
" autocmd plugs FileType nlang call SyntaxRange#Include('@begin=c@', '@end=c@', 'c', 'NonText')
" }}}

Plug 't9md/vim-quickhl' " {{{
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

let g:quickhl_manual_colors = [
            \ 'ctermfg=174 cterm=bold guifg=#ffffff gui=bold',
            \ 'ctermfg=215 cterm=bold guifg=#ff5fd7 gui=bold',
            \ 'ctermfg=111 cterm=bold guifg=#87afff gui=bold',
            \ 'ctermfg=177 cterm=bold guifg=#ffff5f gui=bold',
            \ 'ctermfg=202 cterm=bold guifg=#d7d7d7 gui=bold',
            \ 'ctermfg=166 cterm=bold guifg=#ff5f87 gui=bold',
            \ 'ctermfg=30 cterm=bold guifg=#5fff87 gui=bold',
            \ 'ctermfg=129 cterm=bold guifg=#af00ff gui=bold',
            \ ]

" let g:quickhl_manual_colors = [
"             \ 'ctermfg=7 cterm=bold guifg=#ffffff gui=bold',
"             \ 'ctermfg=206 cterm=bold guifg=#ff5fd7 gui=bold',
"             \ 'ctermfg=111 cterm=bold guifg=#87afff gui=bold',
"             \ 'ctermfg=227 cterm=bold guifg=#ffff5f gui=bold',
"             \ 'ctermfg=188 cterm=bold guifg=#d7d7d7 gui=bold',
"             \ 'ctermfg=204 cterm=bold guifg=#ff5f87 gui=bold',
"             \ 'ctermfg=84 cterm=bold guifg=#5fff87 gui=bold',
"             \ 'ctermfg=129 cterm=bold guifg=#af00ff gui=bold',
"             \ ]

" nmap <Space>J <Plug>(quickhl-cword-toggle)
" nmap <Space>] <Plug>(quickhl-tag-toggle)
" For use with vim-operator-user
" map H <Plug>(operator-quickhl-manual-this-motion)
" }}}

Plug 'RRethy/vim-illuminate', { 'for' : 'factor' } " {{{
let g:Illuminate_delay = 0
" }}}

Plug 'haya14busa/vim-operator-flashy', { 'commit' : 'b24673a9b0d5d60b26d202deb13d4ebf90d7a2ae' } " {{{
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
" let g:operator#flashy#group = "Visual"
let g:operator#flashy#group = "Search"
" }}}

" }}}


" ||
" || Multi-cursor
" ||

" {{{

Plug 'mg979/vim-visual-multi' " {{{
let g:VM_maps = {}

" H & L replacements can be found in mappings.vim
let g:VM_maps['Find Under'] = 'L'
let g:VM_maps['Find Subword Under'] = 'L'

" let g:multi_cursor_next_key = 'L'
" let g:multi_cursor_prev_key = 'H'
" let g:multi_cursor_skip_key = '<C-x>'
" let g:multi_cursor_quit_key = '<Esc>'
" }}}

" }}}


" ||
" || Cycle
" ||

" {{{

Plug 'bootleq/vim-cycle' " {{{
let g:cycle_no_mappings = 1
nmap <silent> <Leader><C-a> <Plug>CycleNext
vmap <silent> <Leader><C-a> <Plug>CycleNext
nmap <silent> <Leader><C-x> <Plug>CyclePrev
vmap <silent> <Leader><C-x> <Plug>CyclePrev
" noremap <silent> <Plug>CycleFallbackNext <C-A><C-n>
" noremap <silent> <Plug>CycleFallbackPrev <C-A><C-p>

let g:cycle_default_groups = [
            \   [['true', 'false']],
            \   [['and', 'or']],
            \   [['+', '-']],
            \   [['":"', '(:)', '[:]', '{:}', '<:>', "':'", '":"'], 'sub_pairs'],
            \   [['  ', '. ', '..', '.:', '::']],
            \   [['today', 'tonight', 'tomorrow']],
            \   [['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']],
            \   [['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']],
            \   [['this', 'next']],
            \   [['forward', 'backward']],
            \   [['head', 'tail']],
            \   [['ctrl', 'alt', 'shift', 'win', 'meta']],
            \   [['car', 'cdr']],
            \   [['todo', 'done', 'later']],
            \ ]

"  -- Python
let g:cycle_default_groups += [
            \ [['assertTrue', 'assertEqual']],
            \ [['in', 'not in']],
            \ [['startswith', '__contains__', 'endswith']],
            \ ]

"  -- Elixir
let g:cycle_default_groups += [
            \ [['spec', 'callback']],
            \ [['if', 'unless']],
            \ [['assert', 'refute']],
            \ ]

"  -- CSS
let g:cycle_default_groups += [
            \   [["show", "hide"]],
            \   [["left", "right"]],
            \   [["none", "top", "bottom"]],
            \   [["margin", "padding"]],
            \   [["before", "after"]],
            \   [["absolute", "relative"]],
            \   [["first", "last"]],
            \   [["hidden", "auto"]],
            \   [['background-color', 'color']],
            \   [['width', 'height']],
            \ ]

"  -- HTML
let g:cycle_default_groups += [
            \   [['h1', 'h2', 'h3'], 'sub_tag'],
            \   [['ul', 'select', 'ol'], 'sub_tag'],
            \   [['em', 'strong', 'small'], 'sub_tag'],
            \   [['a', 'button'], 'sub_tag'],
            \   [['div', 'form'], 'sub_tag'],
            \   [['class', 'id', 'style']],
            \ ]

"  -- Jiv
let g:cycle_default_groups += [
            \   [['=', 'is', 'name']],
            \ ]

"  -- Lisp
let g:cycle_default_groups += [
            \   [['flet', 'labels']],
            \   [['eql', 'equal']],
            \   [['defun', 'defmacro']],
            \   [['&optional', '&key', '&aux']],
            \ ]

"  -- Zig
let g:cycle_default_groups += [
            \ [['pub fn', 'fn']],
            \ [['const', 'var']],
            \ ]

"  -- Julia
let g:cycle_default_groups += [
            \ [['@test', '@test_throws']],
            \ ]

" }}}

" }}}


" ||
" || Pairs
" ||

" {{{

Plug '~/.vim/conf/_lexima.vim/', { 'for' : 'factor' }
Plug 'cohama/lexima.vim', { 'for' : 'factor' }

" }}}


" ||
" || Snippets
" ||

" {{{

if !has('win32')
    Plug '~/.vim/conf/_ultisnips/'
    " Major insert-mode slowdown after this
    Plug 'SirVer/ultisnips', { 'commit' : '3f8bdedd574633979f71822325b1da91762935f9' }
else
    Plug '~/.vim/conf/_ultisnips/'
    " Major insert-mode slowdown after this
    Plug 'SirVer/ultisnips', { 'commit' : '3f8bdedd574633979f71822325b1da91762935f9' }
    " if has('nvim')
    "     Plug '~/.vim/conf/_LuaSnip/'
    "     Plug 'L3MON4D3/LuaSnip'
    " endif
endif

" }}}

" ||
" || Treesitter
" ||

" {{{

if has('nvim')
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
endif

" }}}

" ||
" || Macros
" ||

" {{{

Plug 'RogerioDosSantos/marvim' "{{{
let marvim_find_key='<Leader>m'
let marvim_store_key = '<Leader>"'
let marvim_load_key = '<Leader>M'
let marvim_register = 'q' " Default
let marvim_prefix = 0
" }}}

" }}}


" ||
" || Registers
" ||

" {{{

if !has('nvim')
    Plug 'ardagnir/united-front'
endif

Plug 'junegunn/vim-peekaboo' " {{{
let g:peekaboo_delay = 200
let g:peekaboo_compact = 1
let g:peekaboo_window = 'bo 30new'
" }}}

" Plug 'AndrewRadev/whitespaste.vim'

" Plug 'sickill/vim-pasta' " {{{

" let g:pasta_disabled_filetypes = ['python', 'coffee', 'yaml', 'prolog']

" }}}

" }}}


" ||
" || Marks
" ||

" {{{

Plug '~/.vim/conf/_vim-signature/'
Plug 'kshenoy/vim-signature'

" }}}


" ||
" || Jumps
" ||

" {{{

Plug 'kana/vim-exjumplist' " {{{
nmap <C-M-o> <Plug>(exjumplist-go-first)
nmap <C-M-t> <Plug>(exjumplist-go-last)
nmap <M-u> <Plug>(exjumplist-previous-buffer)
nmap <M-m> <Plug>(exjumplist-next-buffer)
" }}}

" }}}


" ||
" || Search
" ||

" {{{

Plug '~/.vim/conf/_ag.vim/'
Plug 'rking/ag.vim'

" }}}


" ||
" || Files
" ||

" {{{

Plug '~/.vim/conf/_vifm.vim/'
Plug 'vifm/vifm.vim'

Plug 'mwgkgk/vim-auto-mkdir'

" }}}


" ||
" || Buffers
" ||

" {{{

Plug 'c9s/bufexplorer'

" }}}


" ||
" || Windows
" ||

" {{{

Plug 'AndrewRadev/yankwin.vim' " {{{
let g:yankwin_default_yank_mappings = 0
nnoremap <Space>gy  :call yankwin#Yank({'path_type': 'relative', 'with_line_number': 0})<cr>
nnoremap <Space>y :call yankwin#Yank({'path_type': 'absolute', 'with_line_number': 0})<cr>
nnoremap <Space>gY  :call yankwin#Yank({'path_type': 'relative', 'with_line_number': 1})<cr>
nnoremap <Space>Y :call yankwin#Yank({'path_type': 'absolute', 'with_line_number': 1})<cr>
let g:yankwin_default_delete_mappings = 0
nnoremap <Space>gd  :call yankwin#Delete({'path_type': 'relative', 'with_line_number': 0})<cr>
nnoremap <Space>d :call yankwin#Delete({'path_type': 'absolute', 'with_line_number': 0})<cr>
nnoremap <Space>gD  :call yankwin#Delete({'path_type': 'relative', 'with_line_number': 1})<cr>
nnoremap <Space>D :call yankwin#Delete({'path_type': 'absolute', 'with_line_number': 1})<cr>
let g:yankwin_default_paste_mappings = 0
nnoremap <Space><c-p> :call yankwin#Paste({'edit_command': 'edit'})<cr>
nnoremap <Space>p     :call yankwin#Paste({'edit_command': 'rightbelow split'})<cr>
nnoremap <Space>gp    :call yankwin#Paste({'edit_command': 'leftabove split'})<cr>
nnoremap <Space>P     :call yankwin#Paste({'edit_command': 'vert split'})<cr>
nnoremap <Space>gP    :call yankwin#Paste({'edit_command': 'leftabove vert split'})<cr>
nnoremap <Space>Gp    :call yankwin#Paste({'edit_command': 'tab split'})<cr>
nnoremap <Space>GP    :call yankwin#Paste({'edit_command': (tabpagenr() - 1).'tab split'})<cr>
" }}}

Plug 'szw/vim-maximizer' " {{{
let g:maximizer_set_default_mapping = 0
nnoremap <silent>Z :MaximizerToggle<CR>
" }}}

Plug 'wellle/visual-split.vim' " :VSSplit, :VSResize

" }}}


" ||
" || Quickfix
" ||

" {{{

Plug 'Valloric/ListToggle' " {{{
let g:lt_quickfix_list_toggle_map = '<Space>`'
let g:lt_location_list_toggle_map = '<Space>~'
" }}}

Plug 'yssl/QFEnter'

Plug 'fcpg/vim-kickfix' " {{{
let g:kickfix_zebra = 0
" }}}

Plug 'chauncey-garrett/vim-tasklist', { 'on' : '<Plug>TaskList' } " {{{
" Mnemonic: Toggle tasklist
nmap <leader>tt <Plug>TaskList
let g:tlTokenList = ['FIXME', 'TODO', 'XXX']
let g:tlRememberPosition = 1
let g:tlWindowPosition = 0
" }}}

" }}}


" ||
" || Tabs
" ||

" {{{

Plug '~/.vim/conf/_taboo.vim/'
Plug 'gcmt/taboo.vim'

" }}}


" ||
" || Projects
" ||

" {{{

Plug 'airblade/vim-rooter' " {{{
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1
let g:rooter_cd_cmd = 'lcd'
" }}}

" }}}


" ||
" || Tags
" ||

" {{{

" Plug 'majutsushi/tagbar', { 'on' : 'TagbarOpen' } " {{{
" nnoremap <silent> <F4> :TagbarOpen fjc<CR>
" let g:tagbar_singleclick = 1
" let g:tagbar_foldlevel = 1
" let g:tagbar_left = 1
" let g:tagbar_type_rust = {
"       \ 'ctagstype' : 'rust',
"       \ 'kinds' : [
"       \'T:types,type definitions',
"       \'f:functions,function definitions',
"       \'g:enum,enumeration names',
"       \'s:structure names',
"       \'m:modules,module names',
"       \'c:consts,static constants',
"       \'t:traits',
"       \'i:impls,trait implementations',
"       \]
"       \}
" " }}}

Plug 'liuchengxu/vista.vim' " {{{

let g:vista_sidebar_position = 'vertical topleft'

" TODO Open :Vista automatically on some filetypes
" nnoremap <silent> <F4> :Vista vim_lsp<CR>
nnoremap <silent> <F4> :Vista<CR>
nnoremap sgz :call vista#finder#fzf#Run()<CR>

" }}}}

" }}}


" ||
" || Undo
" ||

" {{{

Plug 'mbbill/undotree', { 'on' : 'UndotreeToggle' } " {{{
nnoremap <F5> :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_WindowLayout = 2
" }}}

" }}}


" ||
" || Lint
" ||

" {{{

Plug '~/.vim/conf/_ale/'
Plug 'w0rp/ale'

" }}}


" ||
" || Autoformat
" ||

" {{{

Plug '~/.vim/conf/_vim-autoformat/'
Plug 'Chiel92/vim-autoformat'

" }}}


" ||
" || Eval
" ||

" {{{

" Depends on arecarn/selection.vim
Plug 'arecarn/crunch.vim' " {{{
inoremap <C-g>= <Esc>vB:Crunch<CR>a
" }}}

" }}}


" ||
" || Autocomplete
" ||

" {{{

if has('nvim')
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

    " Installed as dep for vista.vim:
    " Plug 'neoclide/coc.nvim'
    " Disable coc by default: it's not desigend to be loaded per-filetype, and
    " I didn't ask for this.
    " CocDisable
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'

    let g:deoplete#enable_at_startup = 0
    nnoremap <Leader>tc :call deoplete#toggle()<CR>

    " autocmd plugs FileType markdown,jiv call deoplete#disable()

    " inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

    " Complete and Escape
    " inoremap <C-l> <C-n><Esc>:w<CR>

    " This version is like a tab, and doesn't work for sequencing <Esc>:w after.
    " inoremap <silent><expr> <C-l>
    "     \ pumvisible() ? "\<C-n>" :
    "     \ <SID>check_back_space() ? "\<TAB>" :
    "     \ deoplete#manual_complete()
endif
" }}}

" {{{

" if has('win32') || has('win64')
"   Plug 'tbodt/deoplete-tabnine', { 'do': 'powershell.exe .\install.ps1' }
" else
"   Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
" endif


" " Add this after plug#end;
" call deoplete#custom#var('tabnine', {
"             \ 'line_limit': 500,
"             \ 'max_num_results': 20,
"             \ })

" }}}

" }}}

" ||
" || Docs
" ||

" {{{

Plug 'Shougo/echodoc.vim' " {{{
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'echo'
set noshowmode
highlight link EchoDocPopup Pmenu
" }}}

" }}}


" ||
" || Git
" ||

" {{{

Plug '~/.vim/conf/_vim-fugitive/'
Plug 'tpope/vim-fugitive'

if has('nvim')
    " Plug 'lewis6991/gitsigns.nvim'
    " lua require('gitsigns').setup()

    Plug '~/.vim/conf/_vim-gitgutter/'
    Plug 'airblade/vim-gitgutter' 
else
    Plug '~/.vim/conf/_vim-gitgutter/'
    Plug 'airblade/vim-gitgutter'
endif

Plug 'rbong/vim-flog' " {{{
" Big log
nnoremap <Leader>gl :Flog -all<CR>
" Log in file
nnoremap <Leader>gL :Flog -all -path=<C-R>=expand('%')<CR><CR>
let g:flog_use_internal_lua = v:true
" }}}

Plug 'rhysd/git-messenger.vim'
let g:git_messenger_always_into_popup = v:true
let g:git_messenger_include_diff = 'current'

" }}}


" ||
" || Term
" ||

" {{{

Plug '~/.vim/conf/_neoterm/'
Plug 'kassio/neoterm'

" }}}

" ||
" || Shell
" ||

" {{{

Plug '~/.vim/conf/_asyncrun.vim/'
Plug 'skywind3000/asyncrun.vim'

" }}}


" ||
" || Unix
" ||

" {{{

Plug '~/.vim/conf/_vim-man/'
Plug 'vim-utils/vim-man', { 'on' : 'Man' }

Plug 'tpope/vim-eunuch'

Plug '~/shop/core/colony/colony-vim/'

Plug '~/shop/augs/crown/crown-vim/'

Plug '~/shop/forge/pred/pred-vim/'

Plug '~/um/humix/humix-vim/'

" }}}


" ||
" || Internet
" ||

" {{{

Plug '~/.vim/conf/_open-browser.vim/'
Plug 'tyru/open-browser.vim'

Plug 'tyru/open-browser-github.vim' " {{{
nnoremap gxg :OpenGithubProject <C-r>"<CR>
vnoremap gxg y:OpenGithubProject <C-r>"<CR>
" }}}

Plug 'AndrewRadev/exercism.vim'

" }}}

" ||
" || Firenvim
" ||

if has('nvim')
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
endif

" ||
" || AI
" ||

Plug 'github/copilot.vim' " {{{

" Disable by default
let g:copilot_filetypes = {
            \   'mj': v:false,
            \   'jiv': v:false,
            \   '*': v:false,
            \ }
let g:copilot_no_tab_map = v:true

function! ToggleCopilot()
    if(exists('b:copilot_enabled') && b:copilot_enabled)
        let b:copilot_enabled = v:false
    else
        let b:copilot_enabled = v:true
    endif
    echo 'Copilot is ' . (b:copilot_enabled ? 'enabled' : 'disabled')
endfunction

imap <silent><script><expr> <M-l> copilot#Accept("\<CR>")
imap <M-h> <C-o>:call ToggleCopilot()<CR>
nnoremap <M-h> :call ToggleCopilot()<CR>

" " }}}

" ||
" || Writing
" ||

" {{{

Plug '~/shop/oil/borzhch'

" }}}


" ||
" || Filetypes
" ||

Plug '~/.vim/conf/_vim-lsp/', { 'for' : ['zig', 'd', 'c'] }
Plug 'prabirshrestha/vim-lsp', { 'for' : ['zig', 'd', 'c'] }

Plug 'mattn/vim-lsp-settings', { 'for' : ['zig', 'd', 'c'] }
" Failed attempt at perl lsp
" let g:lsp_settings = { 'pls': {'cmd': ['pls']} }
" let g:lsp_settings_filetype_perl = 'pls'


" Many languages
" TODO Contribute to fix mercury-octave ft on write bug
" Plug 'sheerun/vim-polyglot' " {{{
" let g:polyglot_disabled = ['markdown', 'racket']
" }}}

" Texinfo
Plug 'HiPhish/info.vim'

" Org
Plug 'jceb/vim-orgmode'

" C++
Plug 'bfrg/vim-cpp-modern', { 'for' : 'cpp' }

" Golang
" Plug '~/.vim/conf/_vim-go/'
" Plug 'fatih/vim-go', { 'for' : 'go' }

" Fish
Plug 'dag/vim-fish'

" Ruby
Plug '~/.vim/conf/_vim-textobj-ruby/'
Plug 'rhysd/vim-textobj-ruby'

Plug '~/.vim/conf/_vim-textobj-rubyblock/'
Plug 'nelstrom/vim-textobj-rubyblock'

" Perl
Plug '~/.vim/conf/_perldoc-vim/'
Plug 'hotchpotch/perldoc-vim'

" Requires kana/vim-textobj-function
Plug 'thinca/vim-textobj-function-perl'

Plug '~/shop/gulf/CNPP/CNPP-vim/'

" Prolog
" This is an undocumented Vim ft detection variable for resolving blank .pl ft
" detection. Is recognized by vim-polyglot as well.
" let g:filetype_pl = 'prolog'
let g:filetype_pl = 'perl'

Plug 'adimit/prolog.vim'

Plug '~/.vim/conf/_porog-vim/', { 'for' : 'prolog' }
" https://github.com/mwgkgk/porog-vim
Plug '~/shop/oil/porog/porog-vim', { 'for' : 'prolog' }

" Mercury
" This is needed to resolve conflict. see vim/runtime/autoload/dist/ft.vim,
" dist#ft#FTm().
" TODO push the fix to vim/runtime/autoload/dist/ft.vim upstream
let g:filetype_m = 'mercury'

Plug 'stewy33/mercury-vim'

" Sxhkd
Plug 'kovetskiy/sxhkd-vim', { 'for' : 'sxhkd' }

" Factor
Plug '~/.ghq/github.com/factor/factor/misc/vim/', { 'for' : 'factor' } " {{{

let g:FactorRoot = expand('~/.ghq/github.com/factor/factor')
let g:factor_syn_no_rainbow = 1

" }}}

" Smalltalk
Plug 'davidbalbert/vim-io'

" Lisp
Plug '~/.vim/conf/_vim-sexp/'
Plug 'guns/vim-sexp'

" Plug '~/.vim/conf/_vlime/', { 'for' : 'lisp' }
" Plug 'vlime/vlime', { 'rtp': 'vim/', 'for': 'lisp' }

" Plug '~/.vim/conf/_slimv/', { 'for' : 'lisp' }
" Plug 'kovisoft/slimv', { 'for' : 'lisp' }

if has('nvim')
    Plug 'adolenc/cl-neovim'
endif

" Product management
Plug '~/shop/buro/condition-system/condition-system-vim/'

" Picolisp
Plug '~/shop/oil/picolisp-vim/', { 'for' : 'picolisp' }

" Carp
Plug 'hellerve/carp-vim'

" Clojure
" if has('nvim')
"     Plug 'Olical/conjure', { 'tag': 'v4.16.0' }
" else
"     Plug '~/.vim/conf/_vim-fireplace/', { 'for' : 'clojure' }
"     Plug 'tpope/vim-fireplace', { 'for' : 'clojure' }
" endif

" This uses fireplace connection
" Plug '~/.vim/conf/_vim-cljfmt/', { 'for' : 'clojure' }
" Plug 'venantius/vim-cljfmt', { 'for' : 'clojure' }

" Uses github.com/cespare/goclj/cljfmt
" g:cljfmt_on_save is 1 by default.
Plug 'dmac/vim-cljfmt'

" Racket
" Plug 'wlangstroth/vim-racket', { 'for' : 'racket' }

" Shen
Plug 'nimaai/vim-shen', { 'for' : 'shen' }

" Julia
Plug '~/.vim/conf/_julia-vim/', { 'for' : 'julia' }
Plug 'JuliaEditorSupport/julia-vim', { 'for' : 'julia' }

Plug '~/.vim/conf/_JuliaFormatter.vim/', { 'for' : 'julia' }
Plug 'kdheepak/JuliaFormatter.vim', { 'for' : 'julia' }

" Lua
Plug 'tbastos/vim-lua', { 'for' : 'lua' }

" Fennel
Plug 'bakpakin/fennel.vim'

" if has('nvim')
"     Plug 'Olical/aniseed', { 'tag': 'v3.16.0' }
"     let g:aniseed#env = v:true
" endif

" Janet
Plug 'janet-lang/janet.vim'

" Python
Plug 'bps/vim-textobj-python', { 'for' : 'python' } " {{{
map ]f ]pf
map [f [pf
" }}}
Plug 'fisadev/vim-isort', { 'for' : 'python' }

if has('win32')
    let g:python3_host_prog = "~/AppData/Local/Programs/Python/Python37/python.exe"
endif

" Django
Plug 'mjbrownie/delete-surround-html', { 'for' : 'htmldjango' }
Plug 'mjbrownie/django-template-textobjects', { 'for' : 'htmldjango' }

" Hylang
Plug 'hylang/vim-hy', { 'for' : 'hy' } " {{{
autocmd plugs FileType hy set lisp
" }}}

" LFE
Plug 'lfe-support/vim-lfe', {'for' : 'lfe' }

" Rust
Plug 'rust-lang/rust.vim', { 'for' : 'rust' }
Plug 'racer-rust/vim-racer', { 'for' : 'rust' } " {{{
let g:racer_experimental_completer = 1
" }}}

" Ion
Plug 'vmchale/ion-vim', { 'for' : 'ion' }

" Zig
" Plug 'ziglang/zig.vim', { 'for' : 'zig' } " {{{
" " let g:zig_fmt_autosave = 1
" " let g:zig_fmt_command = ['zig2', 'fmt', '--color', 'off']
" " }}}

" JS
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'maksimr/vim-jsbeautify', { 'for': ['javascript', 'javascript.jsx', 'html'] } " {{{
vnoremap <silent> <Leader>b :call RangeJsBeautify()<CR>
" }}}

" TS
Plug 'ianks/vim-tsx', { 'for' : 'typescript.tsx' }

" Elm
Plug 'lambdatoast/elm.vim', { 'for' : 'elm' }

" Elixir
Plug 'elixir-editors/vim-elixir'

Plug 'mwgkgk/vim-textobj-elixir', { 'for' : 'elixir' }

"Haxe
Plug 'jdonaldson/vaxe'

" Fsharp
" Plug 'fsharp/vim-fsharp'

" Fsharp/Forth .fs conflict:
" see FTfs() in /usr/share/vim/vim82/autoload/dist/ft.vim
" used from /usr/share/vim/vim82/filetype.vim
let g:filetype_fs = 'forth'

" OCaml
set runtimepath^="$HOME/.opam/cs3110-2021fa/share/ocp-indent/vim"

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for' : 'haskell' }
" Plug 'eagletmt/ghcmod-vim', { 'for' : 'haskell' }

" Kmonad
Plug '~/shop/oil/kmonad-vim/', { 'for' : 'kmonad' }

" Dhall
Plug 'vmchale/dhall-vim', { 'for' : 'dhall' }

" Idris
Plug 'idris-hackers/idris-vim', { 'for' : 'idris' }

" Lux
Plug 'mwgkgk/lux-vim', { 'for' : 'lux' }

" ATS
Plug 'vmchale/ats-vim', { 'for' : 'ats' }

" Nim
Plug '~/.vim/conf/_nim.vim/'
Plug 'zah/nim.vim'

" Crystal
Plug '~/.vim/conf/_vim-crystal/', { 'for' : 'crystal' }
Plug 'vim-crystal/vim-crystal', { 'for' : 'crystal' }

" HLA
Plug 'jmahler/hla.vim'

" Jiv, Mj
Plug '~/shop/lex/jiv/jiv-vim/'
Plug '~/shop/lex/mj/mj-vim/'
Plug '~/shop/augs/spion/spion-vim/'

" TODO remove nlang-vim
Plug '~/shop/lex/nlang/nlang-vim/', { 'for' : 'nlang' }

" Hex
Plug 'fidian/hexmode'

" ||
" || Vimscript
" ||

" {{{

Plug 'tpope/vim-scriptease'

" Plug 'thinca/vim-prettyprint'

Plug 'fcpg/vim-complimentary', { 'for' : 'vim' }

Plug 'junegunn/vader.vim'

" }}}

" ||
" || Hex
" ||

Plug 'fidian/hexmode'

" ||
" || Cyrillic
" ||

Plug '~/shop/oil/vim-cyrillic-maps'

" ||
" || Colors
" ||

" {{{

" https://gitlab.com/mwgkgk/colorpolice-vim
" Colorscheme wrapper to fix common annoyances or adjust colors on personal
" preference.
Plug '~/.vim/conf/_colorpolice-vim/'
Plug '~/shop/oil/colorpolice/colorpolice-vim/'

" As seen at https://github.com/mwgkgk/vim-colorscheme-heavy-industry
Plug '~/shop/oil/vim-colorscheme-heavy-industry/'

Plug '~/shop/forks/gruvbox/'
Plug 'romainl/Apprentice'
Plug 'romainl/Disciple'
Plug 'jnurmine/Zenburn'
Plug 'sjl/badwolf'
Plug 'jordwalke/flatlandia'
Plug 'sk1418/last256'
Plug 'wolf-dog/sceaduhelm.vim'
Plug 'wolf-dog/nighted.vim'
Plug 'cloudhead/shady.vim'
Plug 'w0ng/vim-hybrid'
Plug 'jonathanfilip/vim-lucius'
Plug 'mwgkgk/vim-kalisi'
Plug 'AlessandroYorba/Alduin'
Plug 'google/vim-colorscheme-primary'
Plug 'AlessandroYorba/Arcadia'
Plug 'mwgkgk/SerialExperimentsLain'
Plug 'fcpg/vim-orbital'
Plug 'junegunn/seoul256.vim'
Plug 'fcpg/vim-fahrenheit'
Plug 'fcpg/vim-farout'
Plug 'jaredgorski/fogbell.vim'
Plug 'plan9-for-vimspace/acme-colors'
Plug 'franbach/miramare'
Plug 'owickstrom/vim-colors-paramount'

" }}}

call plug#end()

source ~/.vim/plugs/vim-matchup/autoload/matchup/custom.vim

" TODO This can be fixed with plug#load('matchup') I believe
call matchup#custom#define_motion('nox', '%',
      \ 'matchup#custom#example_motion', { 'down': 1 })
call matchup#custom#define_motion('nox', 'g%',
      \ 'matchup#custom#example_motion', { 'down': 0 })
