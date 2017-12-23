" vim: foldmethod=marker foldlevel=0

" Nocompatible isn't assumed when starting vim with -u option
set nocompatible

call plug#begin('~/.vim/bundle')

let g:mapleader=";"
let g:maplocalleader=","

" filetype off

augroup plugs.vimrc
    autocmd!
augroup END

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
nnoremap sr :CtrlPRegister<CR>
inoremap <C-g><C-r> <C-O>:CtrlPRegister<CR>
" }}}

Plug 'scrooloose/nerdtree' " {{{
nnoremap <silent> - :sp<CR>:e  %:p:h<CR>
nnoremap <silent> _ :e  %:p:h<CR>
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowHidden=1
let g:NERDTreeMapUpdir="-"
" }}}
Plug 'travisjeffery/vim-auto-mkdir'

Plug 'mbbill/undotree', { 'on' : 'UndotreeToggle' } " {{{
nnoremap <F5> :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_WindowLayout = 2
" }}}

Plug 'majutsushi/tagbar', { 'on' : 'TagbarOpen' } " {{{
nnoremap <silent> <F4> :TagbarOpen fjc<CR>
let g:tagbar_singleclick = 1
let g:tagbar_foldlevel = 1
let g:tagbar_left = 1
" }}}

Plug 'w0rp/ale' " {{{ lint
let g:ale_linters = {'haskell': ['stack-ghc']}
let g:ale_sign_error = '>'
let g:ale_sign_warning = '!'
let g:ale_lint_on_save = 1
nmap <silent> <Leader>S <Plug>(ale_previous_wrap)
nmap <silent> <Leader>s <Plug>(ale_next_wrap)
" }}}

Plug 'Lokaltog/vim-easymotion' " {{{
" let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*():;"<>.,/?[]{}ABCDEFGHIJKLMNOPQRSTUVWXYZ'
" let g:EasyMotion_keys = 'asdkghlqwertyuiopbvnmcASDFGHJKLQWERTYUIOP1234fj'
let g:EasyMotion_keys = 'asdkghlqwertyuiopbvnmc1234fj'
let g:EasyMotion_leader_key = '<Leader><Enter>'
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1
let g:EasyMotion_do_special_mapping = 1
let g:EasyMotion_add_search_history = 0
" map <Enter>r <Plug>(easymotion-repeat)
" map gw <Plug>(easymotion-bd-w)
" map gl <Plug>(easymotion-lineforward)
" map gh <Plug>(easymotion-linebackward)
map gl <Plug>(easymotion-f)
map gh <Plug>(easymotion-F)
map gL <Plug>(easymotion-t)
map gH <Plug>(easymotion-T)
nmap t <Plug>(easymotion-sn)

nnoremap j gj
nnoremap k gk

map gk <Plug>(easymotion-k)
map gj <Plug>(easymotion-j)
omap gk V<Plug>(easymotion-k)
omap gj V<Plug>(easymotion-j)
" Don't use omap: many binds e.g. fugitive use c in operator-mode
nmap dq dgL"
nmap dQ dgH"a
nmap cq ct"
nmap cQ cT"
nmap dc dgL)a
nmap dC dgH(a
" }}}

Plug 'vim-scripts/marvim' "{{{
let marvim_find_key='<Leader>m'
let marvim_store_key = '<Leader>"'
let marvim_register = 'q' " Default
let marvim_prefix = 0
" }}}

Plug 'SirVer/ultisnips' " {{{
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetsDir = '~/.vim/usnippets/'
let g:UltiSnipsSnippetDirectories = ['usnippets']
let g:UltiSnipsExpandTrigger = '<tab>'
nnoremap <Leader>u :UltiSnipsEdit<CR>
" }}}

Plug 'bootleq/vim-cycle' " {{{
let g:cycle_no_mappings = 1
nmap <silent> <C-A> <Plug>CycleNext
nmap <silent> <C-X> <Plug>CyclePrev
vmap <silent> <C-A> <Plug>CycleNext
vmap <silent> <C-X> <Plug>CyclePrev
noremap <silent> <Plug>CycleFallbackNext <C-A>
noremap <silent> <Plug>CycleFallbackPrev <C-X>

let g:cycle_default_groups = [
            \   [['true', 'false']],
            \   [['and', 'or']],
            \   [['{:}', '[:]', '(:)'], 'sub_pairs'],
            \   [['  ', '. ', '..', '.:', '::']],
            \   [['today', 'tonight', 'tomorrow']],
            \   [['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']],
            \   [['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']],
            \   [['this', 'next']],
            \   [['Bundle', 'Plug']],
            \   [['forward', 'backward']],
            \   [['head', 'tail']],
            \   [['ctrl', 'alt', 'shift', 'win', 'meta']],
            \   [['car', 'cdr']],
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
            \   [['div', 'form', 'p'], 'sub_tag'],
            \   [['class', 'id', 'style']],
            \ ]
" }}}

Plug 'c9s/bufexplorer' "{{{
nnoremap <C-W>S :BufExplorerHorizontalSplit<CR>
" }}}

Plug 'gcmt/taboo.vim' " {{{
set sessionoptions+=tabpages,globals
nnoremap <C-W>C :TabooOpen 
nnoremap <C-W>, :TabooRename 
let g:taboo_tab_format="%N %f%m "
let g:taboo_renamed_tab_format="%N %l%m "
" }}}

Plug 'tmhedberg/matchit'

Plug 'briandoll/change-inside-surroundings.vim' " {{{
" <Leader>ci by default
nnoremap cI :ChangeInsideSurrounding<CR>
" }}}

Plug 'luochen1990/rainbow' " {{{
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['202', '247'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'xml': {
\			'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
\		},
\		'xhtml': {
\			'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'php': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold', 'start=/(/ end=/)/ containedin=@htmlPreproc contains=@phpClTop', 'start=/\[/ end=/\]/ containedin=@htmlPreproc contains=@phpClTop', 'start=/{/ end=/}/ containedin=@htmlPreproc contains=@phpClTop'],
\		},
\		'css': 0,
\		'sh': {
\			'parentheses': [['\(^\|\s\)\S*()\s*{\?\($\|\s\)','_^{_','}'], ['\(^\|\s\)if\($\|\s\)','_\(^\|\s\)\(then\|else\|elif\)\($\|\s\)_','\(^\|\s\)fi\($\|\s\)'], ['\(^\|\s\)for\($\|\s\)','_\(^\|\s\)\(do\|in\)\($\|\s\)_','\(^\|\s\)done\($\|\s\)'], ['\(^\|\s\)while\($\|\s\)','_\(^\|\s\)\(do\)\($\|\s\)_','\(^\|\s\)done\($\|\s\)'], ['\(^\|\s\)case\($\|\s\)','_\(^\|\s\)\(\S*)\|in\|;;\)\($\|\s\)_','\(^\|\s\)esac\($\|\s\)']],
\		},
\	}
\}
" }}}

Plug 'machakann/vim-patternjump' " {{{
let g:patternjump_no_default_key_mappings = 1
let g:patternjump_patterns = {
        \ '_' : { 
        \   'nox' : {
        \     'tail' : ['^\s*$'],
        \     }
        \   },
        \ 'markdown' : {
        \   'nox' : {
        \     'tail' : ['^\(#\|>\)'],
        \     }
        \   },
        \ 'vim' : {
        \   'nox' : {
        \     'tail' : ['^Plug.*'],
        \     }
        \   },
        \ 'conf' : {
        \   'nox' : {
        \     'head' : ['^\s*#.*'],
        \     }
        \   },
        \ 'python' : {
        \   'nox' : {
        \     'tail' : ['^\s*def.*'],
        \     }
        \   },
        \ 'html' : {
        \   'nox' : {
        \     'tail' : ['^\s*<.+>'],
        \     }
        \   },
        \ }

map <M-q> <Plug>(patternjump-backward)
map <M-r> <Plug>(patternjump-forward)

nnoremap <silent> <M-l> :<C-u>call patternjump#forward(
    \ 'n',
    \ [[[],['?']], []],
    \ 0)<CR>
inoremap <silent> <M-l> <Esc>:<C-u>call patternjump#forward(
    \ 'n',
    \ [[[],['?']], []],
    \ 0)<CR>
nnoremap <silent> <M-h> :<C-u>call patternjump#backward(
    \ 'n',
    \ [[[],['?']], []],
    \ 0)<CR>
inoremap <silent> <M-h> <Esc>:<C-u>call patternjump#backward(
    \ 'n',
    \ [[[],['?']], []],
    \ 0)<CR>
" }}}

Plug 'AndrewRadev/splitjoin.vim' " gS, gJ
Plug 'AndrewRadev/dsf.vim'
Plug 'AndrewRadev/yankwin.vim'

Plug 'szw/vim-maximizer' " {{{
let g:maximizer_set_default_mapping = 0
nnoremap <silent>Z :MaximizerToggle<CR>
" }}}

Plug 'tommcdo/vim-exchange'

Plug 'tpope/vim-commentary' " {{{
nmap gcd yypkgccj
" }}}

Plug 'arecarn/selection.vim'

Plug 'dbakker/vim-projectroot' " {{{
nnoremap <Leader>ep :echo ProjectRootGuess()<CR>
nnoremap <Leader>dt :ProjectRootExe !ctags -R<CR>
nnoremap <F12> :ProjectRootExe :AsyncRun git-store-wip<CR>
" - Projectroot Make
command! Make :silent! ProjectRootExe make | redraw!
nnoremap <Leader>dm :Make<CR>
command! InstallHooks :silent! ProjectRootExe ln -s ~/.git-templates/hooks/* .
" - Quaketerm
command! QuakeTerm :ProjectRootExe :AsyncRun add_to_quaketerm "r %:."
nnoremap <Leader><LocalLeader> :QuakeTerm<CR>
" }}}

Plug 'Valloric/ListToggle' " {{{
let g:lt_quickfix_list_toggle_map = '<Space>`'
let g:lt_location_list_toggle_map = '<Space>~'
" }}}
Plug 'yssl/QFEnter'

Plug 'ardagnir/united-front'

Plug 'rking/ag.vim'  " {{{
let g:ag_prg = 'ag --hidden --nogroup --nocolor --column --smart-case --skip-vcs-ignores'
let g:ag_highlight=1
nnoremap <Leader>ge :Ag<Space><Space>"<C-R>=expand('%:p:h')<CR>/"<C-left><Left>
nnoremap <Leader>gE :Ag <C-R><C-W> "<C-R>=expand('%:p:h')<CR>/"<C-left><Left>
nnoremap <Leader>gx :Ag <C-R>/ "<C-R>=expand('%:p:h')<CR>/"<C-left><Left>
nnoremap <Leader>gg :ProjectRootExe Ag <C-R><C-W>
nnoremap <Leader>gf :ProjectRootExe find **/<C-R><C-W>*<CR>
" }}}

Plug 'kshenoy/vim-signature' " {{{
let g:SignatureMap = {
    \ 'Leader'             :  "m",
    \ 'PlaceNextMark'      :  "mm",
    \ 'ToggleMarkAtLine'   :  "m.",
    \ 'PurgeMarksAtLine'   :  "m-",
    \ 'DeleteMark'         :  "dm",
    \ 'PurgeMarks'         :  "m_",
    \ 'PurgeMarkers'       :  "m<BS>",
    \ 'GotoNextLineAlpha'  :  "']",
    \ 'GotoPrevLineAlpha'  :  "'[",
    \ 'GotoNextSpotAlpha'  :  "`]",
    \ 'GotoPrevSpotAlpha'  :  "`[",
    \ 'GotoNextLineByPos'  :  "]'",
    \ 'GotoPrevLineByPos'  :  "['",
    \ 'GotoNextSpotByPos'  :  "]`",
    \ 'GotoPrevSpotByPos'  :  "[`",
    \ 'GotoNextMarker'     :  "]-",
    \ 'GotoPrevMarker'     :  "[-",
    \ 'GotoNextMarkerAny'  :  "]=",
    \ 'GotoPrevMarkerAny'  :  "[=",
    \ 'ListBufferMarks'    :  "m/",
    \ 'ListBufferMarkers'  :  "m?"
    \ }
nnoremap <Leader>M M
nmap M `]
nmap U `[
" }}}
Plug 'Chiel92/vim-autoformat' " {{{
let g:formatdef_elmformat = '"elm-format --upgrade --yes --stdin"'
let g:formatters_elm = ['elmformat']
let g:formatdef_hindent = '"hindent"'
let g:formatters_haskell = ['hindent']
let g:formatters_idris = ['hindent']
let g:formatdef_cljfmt = '"lein cljfmt check"'
let g:formatters_clojure = ['cljfmt']
let g:formatdef_shfmt = '"shfmt -i 4 -p"'
let g:formatters_sh = ['shfmt']
" autocmd plugs.vimrc BufWrite *.elm :Autoformat
autocmd plugs.vimrc FileType elm,haskell,clojure,idris nnoremap <buffer> <Leader>z :Autoformat<CR>
autocmd plugs.vimrc FileType sh nnoremap <buffer> <Leader>z :Autoformat<CR>
autocmd plugs.vimrc FileType markdown nnoremap <buffer> <Leader>z :Trailing<CR>
" }}}

Plug 'terryma/vim-multiple-cursors' " {{{
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key = '<C-l>'
let g:multi_cursor_prev_key = '<C-h>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'
" }}}

Plug 'Shougo/vimproc.vim', { 'do' : 'make' } " {{{
vnoremap gX y:call vimproc#system('bro url <C-R>"')<CR>
vnoremap gx y:call vimproc#system('firefox-default <C-R>" &')<CR>
vnoremap gs y:call vimproc#system('firefox-default https://google.com/search?hl=en&q=<C-R>" &')<CR>
autocmd plugs.vimrc BufWrite *.elm,*.html,*.css,*.ex,*.exs VimProcBang refresh-dev1
" }}}
Plug 'Shougo/vimshell.vim' " {{{
nnoremap <Leader>E :VimShell<CR>
nnoremap <Leader>vp :exe 'VimShell -popup' ProjectRootGuess()<CR>
nnoremap <Leader>vP :exe 'VimShell -split' ProjectRootGuess()<CR>
nnoremap <Leader>vb :VimShellBufferDir -popup<CR>
nnoremap <Leader>vB :VimShellBufferDir -split<CR>
nnoremap <Leader>vv :VimShellSendString h<CR>
nmap <Leader>vw yw:VimShell<CR><Esc><C-P>A<C-W><C-R>"<CR><Esc><C-W>p
nmap <Leader>vf wyw:VimShell<CR><Esc><C-P>A<C-W><C-R>"<CR><Esc><C-W>p
nmap <Leader>va yw:VimShell<CR><Esc><C-P>A.<C-R>"<CR><Esc><C-W>p
nmap <Leader>vu yw:VimShell<CR><Esc><C-P>A<C-W><C-W><CR><Esc><C-W>p
" Use current directory as vimshell prompt.
let g:vimshell_prompt_expr =
            \ 'escape(fnamemodify(getcwd(), ":~").">", "\\[]()?! ")." "'
let g:vimshell_prompt_pattern = '^\%(\f\|\\.\)\+> '
let g:vimshell_scrollback_limit = 65535
" }}}

Plug 'skywind3000/asyncrun.vim' " {{{
nnoremap <F3> :AsyncRun<Space>
nnoremap <Space>r :AsyncRun tmux send -t serverterm C-u do-thing C-m<CR>
nnoremap <Space><Tab> :AsyncRun tmux send -t serverterm C-c && sleep 0.1 && tmux send -t serverterm C-c <CR>
" }}}

Plug 'arecarn/crunch.vim' " {{{
inoremap <C-g><C-g> <Esc>vB:Crunch<CR>a
" }}}

Plug 'thinca/vim-quickrun' " {{{
nnoremap <Leader>l :QuickRun<CR>
" }}}
Plug 'thinca/vim-textobj-between' " {{{
let g:textobj_between_no_default_key_mappings = 1
xmap ii <Plug>(textobj-between-i)
omap ii <Plug>(textobj-between-i)
xmap aa <Plug>(textobj-between-a)
omap aa <Plug>(textobj-between-a)
" }}}

Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line' " {{{
let g:textobj_line_no_default_key_mappings = 1
nmap vv v<Plug>(textobj-line-i)
" }}}
Plug 'kana/vim-textobj-indent' " {{{
let g:textobj_entire_no_default_key_mappings = 1
xmap an  <Plug>(textobj-indent-a)
omap an  <Plug>(textobj-indent-a)
xmap in  <Plug>(textobj-indent-i)
omap in  <Plug>(textobj-indent-i)
xmap aN  <Plug>(textobj-indent-same-a)
omap aN  <Plug>(textobj-indent-same-a)
xmap iN  <Plug>(textobj-indent-same-i)
omap iN  <Plug>(textobj-indent-same-i)

" }}}
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-entire' " {{{
let g:textobj_entire_no_default_key_mappings = 1
xmap iF <Plug>(textobj-entire-i)
omap iF <Plug>(textobj-entire-i)
xmap aF <Plug>(textobj-entire-a)
omap aF <Plug>(textobj-entire-a)
" }}}
Plug 'kana/vim-submode', {'on' : [] } " {{{
let g:submode_timeoutlen = 700

silent! call plug#load('vim-submode')

call submode#enter_with('Remote↑↓', 'n', '', '[k', ':silent! VimProcBang bro scrollUp<CR>')
call submode#map(       'Remote↑↓', 'n', '',  'k', ':silent! VimProcBang bro scrollUp<CR>')
call submode#enter_with('Remote↑↓', 'n', '', '[j', ':silent! VimProcBang bro scrollDown<CR>')
call submode#map(       'Remote↑↓', 'n', '',  'j', ':silent! VimProcBang bro scrollDown<CR>')

call submode#enter_with('RemoteYT', 'n', '', '[l', ':silent! VimProcBang bro ytForward5<CR>')
call submode#map(       'RemoteYT', 'n', '',  'l', ':silent! VimProcBang bro ytForward5<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[L', ':silent! VimProcBang bro ytForward10<CR>')
call submode#map(       'RemoteYT', 'n', '',  'L', ':silent! VimProcBang bro ytForward10<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[;', ':silent! VimProcBang bro ytForward20<CR>')
call submode#map(       'RemoteYT', 'n', '',  ';', ':silent! VimProcBang bro ytForward20<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[h', ':silent! VimProcBang bro ytBackward5<CR>')
call submode#map(       'RemoteYT', 'n', '',  'h', ':silent! VimProcBang bro ytBackward5<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[H', ':silent! VimProcBang bro ytBackward10<CR>')
call submode#map(       'RemoteYT', 'n', '',  'H', ':silent! VimProcBang bro ytBackward10<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[g', ':silent! VimProcBang bro ytBackward20<CR>')
call submode#map(       'RemoteYT', 'n', '',  'g', ':silent! VimProcBang bro ytBackward20<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[<', ':silent! VimProcBang bro ytFaster<CR>')
call submode#map(       'RemoteYT', 'n', '',  '<', ':silent! VimProcBang bro ytFaster<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[>', ':silent! VimProcBang bro ytSlower<CR>')
call submode#map(       'RemoteYT', 'n', '',  '>', ':silent! VimProcBang bro ytSlower<CR>')
call submode#enter_with('RemoteYT', 'n', '', '[<Space>', ':silent! VimProcBang bro space<CR>')
call submode#map(       'RemoteYT', 'n', '',  '<Space>', ':silent! VimProcBang bro space<CR>')

call submode#enter_with('RemoteYT_I', 'i', '', '<C-u><C-y>', '<Esc>:silent! VimProcBang bro ytBackward5<CR>gi')
call submode#map(       'RemoteYT_I', 'i', '', '<C-y>', '<Esc>:silent! VimProcBang bro ytBackward5<CR>gi')

call submode#enter_with('RemoteYT_I', 'i', '', '<C-u><C-u>', '<Esc>:silent! VimProcBang bro space<CR>gi')
call submode#map(       'RemoteYT_I', 'i', '', '<C-u>', '<Esc>:silent! VimProcBang bro space<CR>gi')

call submode#enter_with('RemoteYT_I', 'i', '', '<C-u><C-i>', '<Esc>:silent! VimProcBang bro ytForward5<CR>gi')
call submode#map(       'RemoteYT_I', 'i', '', '<C-i>', '<Esc>:silent! VimProcBang bro ytForward5<CR>gi')

inoremap <C-u><C-t> <Esc>:silent! VimProcBang bro ytPls<CR>gi

nnoremap [u :silent! VimProcBang bro space<CR>

call submode#enter_with('RemoteZoom', 'n', '', '[zo', ':silent! VimProcBang bro zoomOut<CR>')
call submode#map(       'RemoteZoom', 'n', '',   'o', ':silent! VimProcBang bro zoomOut<CR>')
call submode#enter_with('RemoteZoom', 'n', '', '[zi', ':silent! VimProcBang bro zoomIn<CR>')
call submode#map(       'RemoteZoom', 'n', '',   'i', ':silent! VimProcBang bro zoomIn<CR>')

call submode#enter_with('ScrollGo', 'n', '', ';k', '6<C-Y>4k')
call submode#map(       'ScrollGo', 'n', '',  'k', '6<C-Y>4k')
call submode#enter_with('ScrollGo', 'n', '', ';j', '6<C-E>4j')
call submode#map(       'ScrollGo', 'n', '',  'j', '6<C-E>4j')

call submode#enter_with('ScrollStay', 'n', '', ']k', '3<C-Y>')
" call submode#enter_with('ScrollStay', 'n', '', ';k', '3<C-Y>')
call submode#map(       'ScrollStay', 'n', '',  'k', '3<C-Y>')
call submode#enter_with('ScrollStay', 'n', '', ']j', '3<C-E>')
" call submode#enter_with('ScrollStay', 'n', '', ';j', '3<C-E>')
call submode#map(       'ScrollStay', 'n', '',  'j', '3<C-E>')
" }}}

Plug 'sgur/vim-textobj-parameter'

Plug 'akiyan/vim-textobj-xml-attribute'

Plug 'machakann/vim-textobj-equation'

Plug 'mwgkgk/vim-textobj-elixir'

Plug 'wellle/targets.vim' " {{{
let g:targets_separators = '. ; : + - ~ _ * \ |'
" }}}
Plug 'wellle/visual-split.vim'

Plug 'junegunn/vim-after-object' " {{{
autocmd plugs.vimrc VimEnter * call after_object#enable('=', ':', '-', '#', ' ', ';')
" }}}
Plug 'junegunn/vader.vim'
Plug 'junegunn/fzf.vim' " {{{
let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'down': '~15%' }
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'space': 'split',
            \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1
nnoremap s<Space> :FzfBuffers<CR>

nnoremap sK :FZF ~/.vim/skeletons/<CR>
nnoremap sk :call fzf#run({'dir':'~/.vim/skeletons', 'sink':'%!cat', 'down': '~15%'})<CR>
nnoremap T :FzfTags<CR>
nnoremap st :FzfFiletypes<CR>
nnoremap sf :FzfGFiles<CR>
nnoremap s; :FzfHistory:<CR>
nnoremap s[ :FzfBCommits<CR>
nnoremap s] :FzfCommits<CR>

command! -bang -nargs=? -complete=dir FzfFilesWithPreview
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap sw :FzfFilesWithPreview ./lib/<CR>
nnoremap ss :FzfFilesWithPreview .<CR>
nnoremap sT :FzfFilesWithPreview /tmp/<CR>
nnoremap s~ :FzfFilesWithPreview ~/<CR>
nnoremap sF :FzfFilesWithPreview ~/<CR>
nnoremap sH :ProjectRootExe :FzfFilesWithPreview ./.git/hooks/<CR>
nnoremap se :FzfFilesWithPreview <C-R>=expand('%:p:h')<CR><CR>
nnoremap sv :FzfFilesWithPreview ~/.vim/<CR>
nnoremap s" :FzfFilesWithPreview ~/.marvim/<CR>

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options

command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
nnoremap sa :Rg<Space>
" }}}
Plug 'junegunn/vim-peekaboo'

Plug 't9md/vim-choosewin' " {{{
let g:choosewin_label_align='center'
let g:choosewin_label='ADFJKLGHQWERUIO'
let g:choosewin_blink_on_land = 0
let g:choosewin_statusline_replace = 0
let g:choosewin_overlay_enable = 0
nmap <Space>f <Plug>(choosewin)
function! WinLabel()
    let n = winnr() - 1
    return g:choosewin_label[n]
endfunction
" }}}
Plug 't9md/vim-textmanip' " {{{
xmap <C-j> <Plug>(textmanip-move-down)
xmap <C-k> <Plug>(textmanip-move-up)
" xmap <C-h> <Plug>(textmanip-move-left)
" xmap <C-l> <Plug>(textmanip-move-right)
nmap <C-k><C-k> V<Plug>(textmanip-move-up)
nmap <C-j><C-j> V<Plug>(textmanip-move-down)

nmap g<C-k> <Plug>(textmanip-duplicate-up)
nmap g<C-j> <Plug>(textmanip-duplicate-down)
xmap g<C-k> <Plug>(textmanip-duplicate-up)
xmap g<C-j> <Plug>(textmanip-duplicate-down)

xmap [<Space> <Plug>(textmanip-blank-above)
xmap ]<Space> <Plug>(textmanip-blank-below)
" }}}
Plug 't9md/vim-quickhl' " {{{
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)
let g:quickhl_manual_colors = [
            \ "ctermfg=7 cterm=bold guifg=#ffffff gui=bold",
            \ "ctermfg=206 cterm=bold guifg=#ff5fd7 gui=bold",
            \ "ctermfg=111 cterm=bold guifg=#87afff gui=bold",
            \ "ctermfg=227 cterm=bold guifg=#ffff5f gui=bold",
            \ "ctermfg=188 cterm=bold guifg=#d7d7d7 gui=bold",
            \ "ctermfg=204 cterm=bold guifg=#ff5f87 gui=bold",
            \ "ctermfg=84 cterm=bold guifg=#5fff87 gui=bold",
            \ "ctermfg=129 cterm=bold guifg=#af00ff gui=bold",
            \ ]

" nmap <Space>J <Plug>(quickhl-cword-toggle)
" nmap <Space>] <Plug>(quickhl-tag-toggle)
" For use with vim-operator-user
" map H <Plug>(operator-quickhl-manual-this-motion)
" }}}

Plug 'haya14busa/vim-operator-flashy' " {{{
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
" let g:operator#flashy#group = "Visual"
let g:operator#flashy#group = "Search"
" }}}
Plug 'haya14busa/vim-easyoperator-line' " {{{
let g:EasyOperator_line_do_mapping = 0
nmap gy <Plug>(easyoperator-line-yank)
nmap gd <Plug>(easyoperator-line-delete)
" }}}
Plug 'haya14busa/vim-edgemotion' " {{{
map <Leader>j <Plug>(edgemotion-j)
map <Leader>k <Plug>(edgemotion-k)
" }}}

Plug 'tpope/vim-surround' " {{{
" Wrapping in braces:
imap <C-c><C-c> <Esc>hysiw)ea
nmap <C-c><C-c> <Esc>ysiw)
" Quotes
imap <C-c>c <Esc>hysiw"ea
nmap <C-c>c <Esc>ysiw"
" }}}
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive' " {{{
nnoremap <Leader>G :Gstatus<CR>
nnoremap <Leader>D :Gdiff<CR>
nnoremap <Leader>C :Gcurrent<CR>
nnoremap <Leader>gL :silent! Glog<CR>:bot copen<CR>
" Also, grep commit text in all or current file:
" :Glog --grep=query --
" :Glog --grep=query -- %
" Find text added by commit:
" :Glog --Sfindme --
" :Glog --Sfindme -- %
command! Gcurrent :exe "Gcommit -v -q %:p"
command! Gcached :Gvsplit! diff --staged
" }}}
Plug 'tpope/vim-rsi'

Plug 'cohama/agit.vim' " {{{
" let g:agit_no_default_mappings = 1
let g:agit_enable_auto_show_commit = 0
nnoremap <Space>A :Agit<CR>
nnoremap <F11> :ProjectRootExe :Shell git-show-wip<CR>:se ft=git<CR><C-w>T
" nnoremap <F11> :let b:git_dir = substitute(b:git_dir, ".git$", ".wip", "")<CR>:Agit<CR>
" }}}

Plug 'mwgkgk/CamelCaseMotion' " {{{

let g:CamelCaseMotion_dont_use_default_mappings = 1

omap <silent> <C-f> <Plug>CamelCaseMotion_iw
xmap <silent> <C-f> <Plug>CamelCaseMotion_iw
map <silent> <C-f> <Plug>CamelCaseMotion_w

omap <silent> <C-b> <Plug>CamelCaseMotion_ib
xmap <silent> <C-b> <Plug>CamelCaseMotion_ib
map <silent> <C-b> <Plug>CamelCaseMotion_b

" Prior to rebinding c-e, we want C-Y to function as a reading scroll.
nnoremap <C-y> 3<C-e>3j

omap <silent> <C-e> <Plug>CamelCaseMotion_ie
xmap <silent> <C-e> <Plug>CamelCaseMotion_ie
map <silent> <C-e> <Plug>CamelCaseMotion_e

" kill-small-word insert mode:
imap <C-g><C-w> <Esc><C-b>cw

" }}}
Plug 'mwgkgk/vim-operator-append' " {{{
map <Leader>a <Plug>(operator-append)
" }}}
Plug 'mwgkgk/vim-operator-insert' " {{{
map <Leader>i <Plug>(operator-insert)
" }}}

Plug 'vifm/vifm.vim' " {{{
cab fm SplitVifm
nnoremap <F2> :SplitVifm<CR>
" }}}

" Many languages
Plug 'sheerun/vim-polyglot' " {{{
let g:polyglot_disabled = ['markdown', 'racket']
" }}}

" Lisp
Plug 'guns/vim-sexp' " {{{
" Disable mapping hooks
let g:sexp_filetypes = ''
function! s:vim_sexp_mappings()
            xmap <silent><buffer> af              <Plug>(sexp_outer_list)
            omap <silent><buffer> af              <Plug>(sexp_outer_list)
            xmap <silent><buffer> if              <Plug>(sexp_inner_list)
            omap <silent><buffer> if              <Plug>(sexp_inner_list)
            xmap <silent><buffer> aF              <Plug>(sexp_outer_top_list)
            omap <silent><buffer> aF              <Plug>(sexp_outer_top_list)
            xmap <silent><buffer> iF              <Plug>(sexp_inner_top_list)
            omap <silent><buffer> iF              <Plug>(sexp_inner_top_list)
            xmap <silent><buffer> as              <Plug>(sexp_outer_string)
            omap <silent><buffer> as              <Plug>(sexp_outer_string)
            xmap <silent><buffer> is              <Plug>(sexp_inner_string)
            omap <silent><buffer> is              <Plug>(sexp_inner_string)
            xmap <silent><buffer> ae              <Plug>(sexp_outer_element)
            omap <silent><buffer> ae              <Plug>(sexp_outer_element)
            xmap <silent><buffer> ie              <Plug>(sexp_inner_element)
            omap <silent><buffer> ie              <Plug>(sexp_inner_element)
            " nmap <silent><buffer> <M-k>           <Plug>(sexp_swap_list_backward)
            " xmap <silent><buffer> <M-k>           <Plug>(sexp_swap_list_backward)
            " nmap <silent><buffer> <M-j>           <Plug>(sexp_swap_list_forward)
            " xmap <silent><buffer> <M-j>           <Plug>(sexp_swap_list_forward)
            nmap <silent><buffer> <M-h>           <Plug>(sexp_swap_element_backward)
            xmap <silent><buffer> <M-h>           <Plug>(sexp_swap_element_backward)
            nmap <silent><buffer> <M-l>           <Plug>(sexp_swap_element_forward)
            xmap <silent><buffer> <M-l>           <Plug>(sexp_swap_element_forward)
            imap <silent><buffer> <M-S-j>         <C-o><Plug>(sexp_emit_head_element)
            nmap <silent><buffer> <M-S-j>         <Plug>(sexp_emit_head_element)
            xmap <silent><buffer> <M-S-j>         <Plug>(sexp_emit_head_element)
            imap <silent><buffer> <M-S-k>         <C-o><Plug>(sexp_emit_tail_element)
            nmap <silent><buffer> <M-S-k>         <Plug>(sexp_emit_tail_element)
            xmap <silent><buffer> <M-S-k>         <Plug>(sexp_emit_tail_element)
            imap <silent><buffer> <M-S-h>         <C-o><Plug>(sexp_capture_prev_element)
            nmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
            xmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
            imap <silent><buffer> <M-S-l>         <C-o><Plug>(sexp_capture_next_element)
            nmap <silent><buffer> <M-S-l>         <Plug>(sexp_capture_next_element)
            xmap <silent><buffer> <M-S-l>         <Plug>(sexp_capture_next_element)
            nmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
            xmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
            omap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
            nmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
            xmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
            omap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
            nmap <silent><buffer> b           <Plug>(sexp_move_to_prev_element_head)
            xmap <silent><buffer> b           <Plug>(sexp_move_to_prev_element_head)
            omap <silent><buffer> b           <Plug>(sexp_move_to_prev_element_head)
            nmap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
            xmap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
            omap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
            nmap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
            xmap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
            omap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
            nmap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
            xmap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
            omap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
            nmap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
            xmap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
            omap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
            nmap <silent><buffer> ]]              <Plug>(sexp_move_to_next_top_element)
            xmap <silent><buffer> ]]              <Plug>(sexp_move_to_next_top_element)
            omap <silent><buffer> ]]              <Plug>(sexp_move_to_next_top_element)
            nmap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
            xmap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
            omap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
            nmap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
            xmap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
            omap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
            nmap <silent><buffer> ==              <Plug>(sexp_indent)
            nmap <silent><buffer> =-              <Plug>(sexp_indent_top)
            nmap <silent><buffer> <LocalLeader>i  <Plug>(sexp_round_head_wrap_list)
            xmap <silent><buffer> <LocalLeader>i  <Plug>(sexp_round_head_wrap_list)
            nmap <silent><buffer> <LocalLeader>I  <Plug>(sexp_round_tail_wrap_list)
            xmap <silent><buffer> <LocalLeader>I  <Plug>(sexp_round_tail_wrap_list)
            nmap <silent><buffer> <LocalLeader>[  <Plug>(sexp_square_head_wrap_list)
            xmap <silent><buffer> <LocalLeader>[  <Plug>(sexp_square_head_wrap_list)
            nmap <silent><buffer> <LocalLeader>]  <Plug>(sexp_square_tail_wrap_list)
            xmap <silent><buffer> <LocalLeader>]  <Plug>(sexp_square_tail_wrap_list)
            nmap <silent><buffer> <LocalLeader>{  <Plug>(sexp_curly_head_wrap_list)
            xmap <silent><buffer> <LocalLeader>{  <Plug>(sexp_curly_head_wrap_list)
            nmap <silent><buffer> <LocalLeader>}  <Plug>(sexp_curly_tail_wrap_list)
            xmap <silent><buffer> <LocalLeader>}  <Plug>(sexp_curly_tail_wrap_list)
            imap <silent><buffer> <BS>            <Plug>(sexp_insert_backspace)
            imap <silent><buffer> "               <Plug>(sexp_insert_double_quote)
            imap <silent><buffer> (               <Plug>(sexp_insert_opening_round)
            imap <silent><buffer> )               <Plug>(sexp_insert_closing_round)
            imap <silent><buffer> [               <Plug>(sexp_insert_opening_square)
            imap <silent><buffer> ]               <Plug>(sexp_insert_closing_square)
            imap <silent><buffer> {               <Plug>(sexp_insert_opening_curly)
            imap <silent><buffer> }               <Plug>(sexp_insert_closing_curly)
endfunction
autocmd plugs.vimrc FileType clojure,scheme,lisp,hy,lfe,racket,lux call s:vim_sexp_mappings()
" }}}
Plug 'bhurlow/vim-parinfer'

" Lua
Plug 'tbastos/vim-lua', { 'for' : 'lua' }

" Python
Plug 'bps/vim-textobj-python', { 'for' : 'python' } " {{{
nmap ]f ]pf
nmap [f [pf
" }}}

" Django
Plug 'mjbrownie/delete-surround-html', { 'for' : 'htmldjango' }
Plug 'mjbrownie/django-template-textobjects', { 'for' : 'htmldjango' }

" Hylang
Plug 'hylang/vim-hy', { 'for' : 'hy' } " {{{
autocmd plugs.vimrc FileType hy set lisp
" }}}

" LFE
Plug 'lfe-support/vim-lfe', {'for' : 'lfe' } " {{{
autocmd plugs.vimrc FileType lfe set lisp
" }}}

" Rust
Plug 'rust-lang/rust.vim', { 'for' : 'rust' }

" JS
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify' " {{{
vnoremap <silent> <Leader>b :call RangeJsBeautify()<CR>
" }}}

" Elm
Plug 'lambdatoast/elm.vim', { 'for' : 'elm' }

" Elixir
" Plug 'slashmili/alchemist.vim', { 'for' : 'elixir' } " {{{
" let g:alchemist_mappings_disable = 1
" nnoremap <buffer> <silent> <Leader>dd :call alchemist#exdoc()<CR>
" }}}

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for' : 'haskell' }
" Plug 'eagletmt/ghcmod-vim', { 'for' : 'haskell' }

" Idris
Plug 'idris-hackers/idris-vim', { 'for' : 'idris' }

" Lux
Plug 'mwgkgk/lux-vim', { 'for' : 'lux' }

" Local
if filereadable(glob("~/.local.plugs.vimrc")) 
    source ~/.local.plugs.vimrc
endif

" Colors
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher' " {{{
" F8, Shift-F8
" }}}

Plug 'romainl/Apprentice'
Plug 'romainl/Disciple'
Plug 'jnurmine/Zenburn'
Plug 'sjl/badwolf'
Plug 'jordwalke/flatlandia'
Plug 'mitsuhiko/fruity-vim-colorscheme'
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

call plug#end()

source ~/.vimrc

