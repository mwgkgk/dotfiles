" vim: foldmethod=marker foldlevel=0

" Nocompatible isn't assumed when starting vim with -u option
set nocompatible

call plug#begin('~/.vim/bundle')

let g:mapleader=";"
let g:maplocalleader="'"

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
nnoremap <silent> _ :e  %:p:h<CR>
nnoremap <silent> <Leader>_ :sp<CR>:e  %:p:h<CR>
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowHidden=1
let g:NERDTreeMapUpdir="_"
" }}}

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
let g:tagbar_type_rust = {
      \ 'ctagstype' : 'rust',
      \ 'kinds' : [
      \'T:types,type definitions',
      \'f:functions,function definitions',
      \'g:enum,enumeration names',
      \'s:structure names',
      \'m:modules,module names',
      \'c:consts,static constants',
      \'t:traits',
      \'i:impls,trait implementations',
      \]
      \}
" }}}

Plug 'w0rp/ale' " {{{ lint
let g:ale_linters = {
      \ 'haskell': ['stack-ghc'],
      \ 'perl'   : ['perl', 'perlcritic'],
      \ 'rust'   : ['cargo'],
      \ }
let g:ale_tcl_nagelfar_executable = 'nagelfar'
let g:ale_sign_error = '>'
let g:ale_sign_warning = '!'
let g:ale_lint_on_save = 1
let g:ale_set_highlights = 0
nmap <silent> <Leader>S <Plug>(ale_previous_wrap)
nmap <silent> <Leader>s <Plug>(ale_next_wrap)
" }}}

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

map \\ <Plug>(easymotion-s)
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
nmap d' d\t"<Space><Esc>
nmap d" d\T"<Space><Esc>
nmap y' y\t"<Space><Esc>
nmap y" y\T"<Space><Esc>
nmap c' c\t"<Space>
nmap c" c\T"<Space>

nmap dr d\t)<Space><Esc>
nmap dR d\T(<Space><Esc>
nmap yr y\t)<Space><Esc>
nmap yR y\T(<Space><Esc>
nmap cr c\t)<Space>
nmap cR c\T(<Space>
" }}}

Plug 'RogerioDosSantos/marvim' "{{{
let marvim_find_key='<Leader>m'
let marvim_store_key = '<Leader>"'
let marvim_load_key = '<Leader>M'
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
            \   [['+', '-']],
            \   [['{:}', '[:]', '(:)', '":"'], 'sub_pairs'],
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

"  -- Jiv
let g:cycle_default_groups += [
            \   [['=', 'is', 'name']],
            \ ]
" }}}

Plug 'c9s/bufexplorer'

Plug 'gcmt/taboo.vim' " {{{
set sessionoptions+=tabpages,globals
nnoremap <C-W>C :TabooOpen 
nnoremap <C-W>, :TabooRename 
let g:taboo_tab_format="%N %f%m "
let g:taboo_renamed_tab_format="%N %l%m "
" }}}

Plug 'briandoll/change-inside-surroundings.vim' " {{{
" <Leader>ci by default
nnoremap cI :ChangeInsideSurrounding<CR>
" }}}

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['none', '242'],
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
\		'ocaml': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/\[|/ end=/|\]/'],
\		},
\	}
\}

" Clear the highlighting conflict:
" See https://github.com/luochen1990/rainbow/issues/95
let g:sh_no_error = 1

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
" }}}

Plug 'AndrewRadev/dsf.vim'
Plug 'AndrewRadev/yankwin.vim' " {{{
let g:yankwin_default_yank_mappings = 0
nnoremap <c-w>gy  :call yankwin#Yank({'path_type': 'relative', 'with_line_number': 0})<cr>
nnoremap <c-w>y :call yankwin#Yank({'path_type': 'absolute', 'with_line_number': 0})<cr>
nnoremap <c-w>gY  :call yankwin#Yank({'path_type': 'relative', 'with_line_number': 1})<cr>
nnoremap <c-w>Y :call yankwin#Yank({'path_type': 'absolute', 'with_line_number': 1})<cr>
let g:yankwin_default_delete_mappings = 0
nnoremap <c-w>gd  :call yankwin#Delete({'path_type': 'relative', 'with_line_number': 0})<cr>
nnoremap <c-w>d :call yankwin#Delete({'path_type': 'absolute', 'with_line_number': 0})<cr>
nnoremap <c-w>gD  :call yankwin#Delete({'path_type': 'relative', 'with_line_number': 1})<cr>
nnoremap <c-w>D :call yankwin#Delete({'path_type': 'absolute', 'with_line_number': 1})<cr>
" }}}
Plug 'AndrewRadev/exercism.vim'
Plug 'AndrewRadev/whitespaste.vim'

Plug 'sickill/vim-pasta'

" Plug 'inkarkat/vim-SyntaxRange' " {{{
" autocmd plugs.vimrc FileType nlang call SyntaxRange#Include('@begin=c@', '@end=c@', 'c', 'NonText')
" }}}
Plug 'vim-scripts/ingo-library'
Plug 'vim-scripts/JumpToLastOccurrence' " {{{
" ,f ,F ,t ,T
" }}}

Plug 'arthurxavierx/vim-caser' " gsc, gss, gsk, ...

" TODO Rebind, add wildfire-water (reverse direction), change objects to full
" forms instead of inside-forms
" Plug 'gcmt/wildfire.vim' " {{{
" nmap <Leader><Enter> <Plug>(wildfire-quick-select)
" }}}

Plug 'szw/vim-maximizer' " {{{
let g:maximizer_set_default_mapping = 0
nnoremap <silent>Z :MaximizerToggle<CR>
" }}}

Plug 'tommcdo/vim-exchange'

Plug 'tpope/vim-commentary' " {{{
nmap gcd yypkgccj
" }}}

Plug 'dbakker/vim-projectroot' " {{{
nnoremap <Leader>ep :echo ProjectRootGuess()<CR>
nnoremap <Leader>dt :ProjectRootExe !ctags -R<CR>
" - Projectroot Make
command! Make :silent! ProjectRootExe make | redraw!
nnoremap <Leader>dm :Make<CR>
command! InstallHooks :silent! ProjectRootExe ln -s ~/.git-templates/hooks/* .
" Deps
autocmd plugs.vimrc FileType rust nnoremap <F12> :ProjectRootExe :sp Cargo.toml<CR>G
" Taskfile
nnoremap <F11> :ProjectRootExe :sp Taskfile.yml<CR>
" Tags
autocmd plugs.vimrc BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd plugs.vimrc BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&"
" }}}
Plug 'airblade/vim-rooter' " {{{
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1
let g:rooter_use_lcd = 1
" }}}

Plug 'Valloric/ListToggle' " {{{
let g:lt_quickfix_list_toggle_map = '<Space>`'
let g:lt_location_list_toggle_map = '<Space>~'
" }}}
Plug 'yssl/QFEnter'
Plug 'fcpg/vim-kickfix'" {{{
let g:kickfix_zebra = 0
" }}}

Plug 'ardagnir/united-front'

Plug 'rking/ag.vim'  " {{{
let g:ag_prg = 'ag --hidden --nogroup --nocolor --column --smart-case --skip-vcs-ignores'
let g:ag_highlight=1
nnoremap <Leader>ge :Ag<Space><Space>"<C-R>=expand('%:p:h')<CR>/"<C-left><Left>
nnoremap <Leader>gE :Ag <C-R><C-W> "<C-R>=expand('%:p:h')<CR>/"<C-left><Left>
nnoremap <Leader>gx :Ag <C-R>/ "<C-R>=expand('%:p:h')<CR>/"<C-left><Left>
nnoremap <Leader>gp :ProjectRootExe Ag <C-R><C-W>
nnoremap <Leader>gf :ProjectRootExe find **/<C-R><C-W>*<CR>
nnoremap <Leader>g<Tab> :Ag <C-r><C-w> ~/ink/mozg<CR>
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
nnoremap <LocalLeader>M M
nmap M `]
nmap U `[
hi link SignatureMarkText Normal
hi link SignatureMarkerText Normal
" }}}
Plug 'Chiel92/vim-autoformat' " {{{
let g:formatdef_elmformat = '"elm-format --upgrade --yes --stdin"'
let g:formatters_elm = ['elmformat']
let g:formatdef_hindent = '"hindent"'
let g:formatters_haskell = ['hindent']
let g:formatters_idris = ['hindent']
let g:formatdef_dhallformat = '"dhall-format"'
let g:formatters_dhall = ['dhallformat']
let g:formatdef_shfmt = '"shfmt -i 4 -p -bn -s"'
let g:formatters_sh = ['shfmt']
let g:formatdef_rustfmt = '"rustfmt --unstable-features"'
let g:formatters_rust = ['rustfmt']
let g:formatdef_ocamlformat = '"ocamlformat - --profile=default --name ".expand("%")'
let g:formatters_ocaml = ['ocamlformat']
let g:formatdef_perltidy = '"perltidy -ce -pt=2 -nasc"'
let g:formatters_perl = ['perltidy']
let g:formatdef_perl6tidy = '"perl6-tidy --indent-style=tab"'
let g:formatters_perl6 = ['perl6tidy']
let g:formatdef_dfmt = '"dfmt --brace_style=otbs"'
let g:formatters_d = ['dfmt']
let g:formatdef_jsfmt = '"jsfmt"'
let g:formatters_js = ['jsfmt']
let g:formatters_python = ['black']
" autocmd plugs.vimrc BufWrite *.elm :Autoformat
autocmd plugs.vimrc FileType elm,haskell,idris,rust,ocaml,sh,perl,perl6,dhall,d,javascript,python,go,c nnoremap <buffer> <Space>f :Autoformat<CR>
autocmd plugs.vimrc FileType markdown nnoremap <buffer> <Space>f :Trailing<CR>
autocmd plugs.vimrc FileType scheme nnoremap <buffer> <Space>f :Trailing<CR>gg=G<C-O><C-O><CR>
" }}}

Plug 'myusuf3/numbers.vim' " {{{
let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m', 'man']
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
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif " {{{
let g:deoplete#enable_at_startup = 0
nnoremap <Space><Leader> :call deoplete#toggle()<CR>

" autocmd plugs.vimrc FileType markdown,jiv call deoplete#disable()
" inoremap <M-j> <C-n>
" inoremap <M-k> <C-p>

" inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" }}}

Plug 'skywind3000/asyncrun.vim' " {{{
nnoremap <F3> :AsyncRun<Space>
nnoremap <Space>r :AsyncRun tmux send -t motor C-u do-thing C-m<CR>
nnoremap <Space><Tab> :AsyncRun tmux send -t motor C-c && sleep 0.1 && tmux send -t motor C-c <CR>
" Refresh dev1 browser
" autocmd plugs.vimrc BufWrite *.elm,*.html,*.css,*.ex,*.exs,*.tsx silent! AsyncRun refresh-dev1
" }}}

Plug 'arecarn/selection.vim'
Plug 'arecarn/crunch.vim' " {{{
inoremap <C-g><C-g> <Esc>vB:Crunch<CR>a
" }}}

Plug 'thinca/vim-quickrun' " {{{
nmap <Leader>rr <Plug>(quickrun)
" }}}
Plug 'thinca/vim-textobj-between' " {{{
let g:textobj_between_no_default_key_mappings = 1
xmap ii <Plug>(textobj-between-i)
omap ii <Plug>(textobj-between-i)
xmap aa <Plug>(textobj-between-a)
omap aa <Plug>(textobj-between-a)
" }}}
Plug 'thinca/vim-prettyprint'

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

" call submode#enter_with('RemoteYT_I', 'i', '', '<C-u><C-y>', '<Esc>:silent! VimProcBang bro ytBackward5<CR>gi')
" call submode#map(       'RemoteYT_I', 'i', '', '<C-y>', '<Esc>:silent! VimProcBang bro ytBackward5<CR>gi')

" call submode#enter_with('RemoteYT_I', 'i', '', '<C-u><C-u>', '<Esc>:silent! VimProcBang bro space<CR>gi')
" call submode#map(       'RemoteYT_I', 'i', '', '<C-u>', '<Esc>:silent! VimProcBang bro space<CR>gi')

" call submode#enter_with('RemoteYT_I', 'i', '', '<C-u><C-i>', '<Esc>:silent! VimProcBang bro ytForward5<CR>gi')
" call submode#map(       'RemoteYT_I', 'i', '', '<C-i>', '<Esc>:silent! VimProcBang bro ytForward5<CR>gi')

" inoremap <C-u><C-t> <Esc>:silent! VimProcBang bro ytPls<CR>gi

nnoremap [u :silent! VimProcBang bro space<CR>

call submode#enter_with('RemoteZoom', 'n', '', '[zo', ':silent! VimProcBang bro zoomOut<CR>')
call submode#map(       'RemoteZoom', 'n', '',   'o', ':silent! VimProcBang bro zoomOut<CR>')
call submode#enter_with('RemoteZoom', 'n', '', '[zi', ':silent! VimProcBang bro zoomIn<CR>')
call submode#map(       'RemoteZoom', 'n', '',   'i', ':silent! VimProcBang bro zoomIn<CR>')

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
Plug 'kana/vim-niceblock'
Plug 'kana/vim-exjumplist' " {{{
nmap <C-M-t> <Plug>(exjumplist-go-last)
nmap <C-M-o> <Plug>(exjumplist-go-first)
nmap <M-)> <Plug>(exjumplist-next-buffer)
nmap <M-(> <Plug>(exjumplist-previous-buffer)
" }}}

Plug 'thinca/vim-visualstar'
Plug 'tyru/operator-star.vim' " {{{
nmap <Leader>*  <Plug>(operator-*)
nmap <Leader>g* <Plug>(operator-g*)
nmap <Leader>#  <Plug>(operator-#)
nmap <Leader>g# <Plug>(operator-g#)
" }}}
Plug 'tyru/open-browser.vim' " {{{
nmap gxx <Plug>(openbrowser-open)
vmap gxx <Plug>(openbrowser-open)
nmap gxs <Plug>(openbrowser-search)
vmap gxs <Plug>(openbrowser-search)

let g:openbrowser_search_engines = {
            \  'clojuredocs': 'https://clojuredocs.org/search?q={query}'
            \}
" }}}
Plug 'tyru/open-browser-github.vim' " {{{
nnoremap gxg :OpenGithubProject <C-r>"<CR>
vnoremap gxg y:OpenGithubProject <C-r>"<CR>
" }}}

Plug 'sgur/vim-operator-openbrowser'" {{{
nmap gx <Plug>(operator-openbrowser)
" }}}
Plug 'sgur/vim-textobj-parameter'

Plug 'akiyan/vim-textobj-xml-attribute'

Plug 'machakann/vim-textobj-equation'

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

map gI <Plug>(IndentWisePreviousAbsoluteIndent)
map gi <Plug>(IndentWiseNextAbsoluteIndent)

map gK <Plug>(IndentWiseBlockScopeBoundaryBegin)
map gJ <Plug>(IndentWiseBlockScopeBoundaryEnd)
" }}}

" Plug 'wellle/targets.vim' " {{{
" let g:targets_separators = '. ; : + - ~ _ * \ |'
" }}}
Plug 'wellle/visual-split.vim' " :VSSplit, :VSResize

Plug 'junegunn/vim-after-object' " {{{
autocmd plugs.vimrc VimEnter * call after_object#enable('=', ':', '-', '#', ' ', ';', ',', '.' )
" }}}
Plug 'junegunn/vader.vim'
Plug 'junegunn/fzf.vim' " {{{
let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'down': '~20%' }
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
nnoremap sz :FzfTags<CR>
nnoremap st :FzfFiletypes<CR>
nnoremap sf :FzfGFiles<CR>
nnoremap Å :FzfGitModified<CR>
nnoremap s' :FzfHistory<CR>
nnoremap s: :FzfHistory:<CR>
nnoremap s; :FzfHistory:<CR>
nnoremap s/ :FzfHistory/<CR>
nnoremap s[ :FzfBCommits<CR>
nnoremap s] :FzfCommits<CR>
nnoremap S :FzfBLines<CR>

command! -bang -nargs=? -complete=dir FzfFilesWithPreview
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap ss :FzfFilesWithPreview .<CR>

nnoremap sw :FzfFilesWithPreview ./lib/<CR>
nnoremap sT :FzfFilesWithPreview /tmp/<CR>
nnoremap s~ :FzfFilesWithPreview ~/<CR>
nnoremap sF :FzfFilesWithPreview ~/<CR>
nnoremap sH :ProjectRootExe :FzfFilesWithPreview ./.git/hooks/<CR>
nnoremap se :FzfFilesWithPreview <C-R>=expand('%:p:h')<CR><CR>
nnoremap <M-v> :FzfFilesWithPreview ~/.vim/<CR>
nnoremap sv :FzfFilesWithPreview ~/.vim/<CR>
nnoremap s" :FzfFilesWithPreview ~/.marvim/<CR>
nnoremap sH :FzfFilesWithPreview ~/help/<CR>

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
nnoremap sa :Rg<CR>

command! FzfGitModified call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --modified'}))
nnoremap sF :FzfGitModified<CR>
" }}}
Plug 'junegunn/vim-peekaboo' " {{{
let g:peekaboo_delay = 200
let g:peekaboo_compact = 1
" }}}
Plug 'junegunn/gv.vim' " {{{
nnoremap <Space>A :GV<CR>
nnoremap <Space>gA :GV!<CR>
" }}}

Plug 'chauncey-garrett/vim-tasklist', { 'on' : '<Plug>TaskList' } " {{{
" Mnemonic: Toggle tasklist
nmap <leader>tt <Plug>TaskList
let g:tlTokenList = ['FIXME', 'TODO', 'XXX']
let g:tlRememberPosition = 1
let g:tlWindowPosition = 0
" }}}

Plug 't9md/vim-textmanip' " {{{
xmap <C-j> <Plug>(textmanip-move-down)
xmap <C-k> <Plug>(textmanip-move-up)
xmap <C-h> <Plug>(textmanip-move-left)
xmap <C-l> <Plug>(textmanip-move-right)
nmap <C-k> V<Plug>(textmanip-move-up)
nmap <C-j> V<Plug>(textmanip-move-down)
nmap <C-h> V<Plug>(textmanip-move-left)
nmap <C-l> V<Plug>(textmanip-move-right)

nmap g<C-k> <Plug>(textmanip-duplicate-up)
nmap g<C-j> <Plug>(textmanip-duplicate-down)
xmap g<C-k> <Plug>(textmanip-duplicate-up)
xmap g<C-j> <Plug>(textmanip-duplicate-down)

nmap <Leader><M-k> <Plug>(textmanip-blank-above)
nmap <Leader><M-j> <Plug>(textmanip-blank-below)
xmap <Leader><M-k> <Plug>(textmanip-blank-above)
xmap <Leader><M-j> <Plug>(textmanip-blank-below)
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

Plug 'RRethy/vim-illuminate' " {{{
let g:Illuminate_delay = 0
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
map <C-M-j> <Plug>(edgemotion-j)
map <C-M-k> <Plug>(edgemotion-k)
" Poor man's horizontal edgemotion
map <C-M-h> B
map <C-M-l> E
" }}}

Plug 'tpope/vim-surround' " {{{
" Wrapping in braces:
imap <C-c><C-c> <Esc>hysiw)ea
nmap <C-c><C-c> <Esc>ysiw)
" Two words
nmap <C-c>l ys3iw)
" Not working
" nmap <C-c>h ys2b)
" Quotes
imap <C-c>q <Esc>hysiW"ea
nmap <C-c>q <Esc>ysiW"a
" }}}
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-fugitive' " {{{
nnoremap <Leader>G :Gstatus<CR>
nnoremap <Leader>D :Gvdiff<CR>

command! GCurrent :exe "Gcommit -q %:p"
nnoremap <Leader>C :GCurrent<CR>

command! GCurrentT :exe "Gcommit -v -q %:p"
nnoremap <Leader>hC :GCurrent<CR>

" Slap date:
nnoremap <Leader>hd :GCurrent<CR>i<C-r>=system('date --utc <bar> tr -d "\n"')<CR><Esc>

" Add
nnoremap <Leader>ha :let @"=expand("%")<CR>:!git add %<CR>:GCurrent<CR>iAdd <C-r>"<Esc>

" With preview
command! GAllPreview :silent exe "Git add ." | :silent exe "Gcommit -v -q -a"
nnoremap <Leader>hA :GAllPreview<CR>

" Quick version: (LeaderLeader too busy atm)
" command! GAll :silent exe "Git add ." | :silent exe "Gcommit -q -a"
" nnoremap <Leader><Leader> :GAll<CR>

" Heil Hydra
nnoremap <Leader>hh :Gcommit -v<CR>
nnoremap <Leader>hc :Gcommit -v<CR>

" Git reset:
command! GReset :ProjectRootExe :AsyncRun git reset
nnoremap <Leader>hr :GReset<CR>:e!<CR>za

" nnoremap <Leader><Leader> :Gtabedit @<CR>

nnoremap <Leader>gL :silent! Glog<CR>:bot copen<CR>
" Also, grep commit text in all or current file:
" :Glog --grep=query --
" :Glog --grep=query -- %
" Find text added by commit:
" :Glog --Sfindme --
" :Glog --Sfindme -- %

" These don't require fugitive:
command! Mes :!git mes
command! Back :!git rollback
" }}}

Plug 'airblade/vim-gitgutter' " {{{
nnoremap <Leader>tg :GitGutterToggle<CR>

" Instead of this,
" nmap <Leader>k <Plug>GitGutterPrevHunk
" nmap <Leader>j <Plug>GitGutterNextHunk
nmap <Leader>hk <Plug>GitGutterPrevHunk
nmap <Leader>hj <Plug>GitGutterNextHunk

nmap <M-p> <Plug>GitGutterPrevHunk
nmap <M-n> <Plug>GitGutterNextHunk

" This. (requires kana/vim-submode)
" call submode#enter_with('GitGutterPrevNext', 'n', '', ';k', '<Plug>GitGutterPrevHunk')
" call submode#map(       'GitGutterPrevNext', 'n', '',  'k', '<Plug>GitGutterPrevHunk')
" call submode#enter_with('GitGutterPrevNext', 'n', '', ';j', '<Plug>GitGutterNextHunk')
" call submode#map(       'GitGutterPrevNext', 'n', '',  'j', '<Plug>GitGutterNextHunk')

" Neither of these work. Something's up with submode.
" call submode#enter_with('GitGutterPrevNext', 'n', '', ';k', ':GitGutterPrevHunk')
" call submode#map(       'GitGutterPrevNext', 'n', '',  'k', ':GitGutterPrevHunk')
" call submode#enter_with('GitGutterPrevNext', 'n', '', ';j', ':GitGutterNextHunk')
" call submode#map(       'GitGutterPrevNext', 'n', '',  'j', ':GitGutterNextHunk')

" More symmetry:
nmap <Leader>hp <Plug>GitGutterStageHunk
nmap <Leader>hs <Plug>GitGutterStageHunk

" LeaderLeader to stage hunk and commit: (requires vim-fugitive)
autocmd plugs.vimrc FileType * nmap <buffer> <Leader><Leader> yy<Plug>GitGutterStageHunk:Gcommit<CR>p
autocmd plugs.vimrc FileType jiv nmap <buffer> <Leader><Leader> yaf<Plug>GitGutterStageHunk:Gcommit<CR>:let @"=substitute(@",'\n\s\+',' ','g')<CR>p

autocmd plugs.vimrc FileType * nmap <buffer> <Leader>l <Plug>GitGutterStageHunk:Gcommit<CR>p
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
Plug 'mwgkgk/vim-auto-mkdir'

Plug 'vifm/vifm.vim' " {{{
cab fm SplitVifm
nnoremap <F2> :SplitVifm<CR>
" }}}

Plug 'vim-utils/vim-man', { 'on' : 'Man' } " {{{
cab man Man
" }}}

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ 'for': [
    \   'rust',
    \   'javascript', 'javascript.jsx',
    \   'typescript', 'typescript.jsx',
    \   'ocaml',
    \   'clojure',
    \ ]
    \ } " {{{
let g:LanguageClient_autoStart = 0
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = $HOME . '/.vim/settings.json'
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'typescript': ['typescript-language-server', '--stdio'],
    \ 'typescript.tsx': ['typescript-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'clojure': ['bash', '-c', 'clojure-lsp'],
    \ }
" \ 'javascript': ['typescript-language-server', '--stdio'],
" \ 'javascript.jsx': ['typescript-language-server', '--stdio'],
autocmd plugs.vimrc FileType typescript,typescript.tsx
    \ nnoremap <buffer> <Space>f :call LanguageClient#textDocument_formatting()<CR>
let g:LanguageClient_diagnosticsDisplay = {
    \     1: {
    \         "name": "Error",
    \         "texthl": "ALEError",
    \         "signText": ">",
    \         "signTexthl": "ALEErrorSign",
    \     },
    \     2: {
    \         "name": "Warning",
    \         "texthl": "ALEWarning",
    \         "signText": "!",
    \         "signTexthl": "ALEWarningSign",
    \     },
    \     3: {
    \         "name": "Information",
    \         "texthl": "ALEInfo",
    \         "signText": "?",
    \         "signTexthl": "ALEInfoSign",
    \     },
    \     4: {
    \         "name": "Hint",
    \         "texthl": "ALEInfo",
    \         "signText": "➤",
    \         "signTexthl": "ALEInfoSign",
    \     },
    \ }
nnoremap <silent> <Leader>H :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <Leader><Tab> :call LanguageClient#workspace_symbol()<CR>
nnoremap <silent> <Leader>[ :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <silent> <Leader>] :call LanguageClient#textDocument_references()<CR>
" nnoremap <silent> <Leader>] :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <Leader>' :call LanguageClient#textDocument_codeAction()<CR>
nnoremap <silent> <Leader>` :call LanguageClient_contextMenu()<CR>
" }}}

" Many languages
Plug 'sheerun/vim-polyglot' " {{{
let g:polyglot_disabled = ['markdown', 'racket']
" }}}

" Go
Plug 'fatih/vim-go', { 'for' : 'go' }

" Perl
Plug 'hotchpotch/perldoc-vim', { 'for' : 'perl' }

" Sxhkd
Plug 'kovetskiy/sxhkd-vim', { 'for' : 'sxhkd' }

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
  nmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
  xmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
  omap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
  nmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
  xmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
  omap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
  nmap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
  xmap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
  omap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
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
  imap <silent><buffer> <M-\>           <C-O><Plug>(sexp_indent_top)
  nmap <silent><buffer> <M-\>           <Plug>(sexp_indent_top)
  nmap <silent><buffer> <C-c>i          <Plug>(sexp_round_head_wrap_list)
  xmap <silent><buffer> <C-c>i          <Plug>(sexp_round_head_wrap_list)
  nmap <silent><buffer> <C-c>I          <Plug>(sexp_round_tail_wrap_list)
  xmap <silent><buffer> <C-c>I          <Plug>(sexp_round_tail_wrap_list)
  nmap <silent><buffer> <C-c>[          <Plug>(sexp_square_head_wrap_list)
  xmap <silent><buffer> <C-c>[          <Plug>(sexp_square_head_wrap_list)
  nmap <silent><buffer> <C-c>]          <Plug>(sexp_square_tail_wrap_list)
  xmap <silent><buffer> <C-c>]          <Plug>(sexp_square_tail_wrap_list)
  nmap <silent><buffer> <C-c>{          <Plug>(sexp_curly_head_wrap_list)
  xmap <silent><buffer> <C-c>{          <Plug>(sexp_curly_head_wrap_list)
  nmap <silent><buffer> <C-c>}          <Plug>(sexp_curly_tail_wrap_list)
  xmap <silent><buffer> <C-c>}          <Plug>(sexp_curly_tail_wrap_list)
  nmap <silent><buffer> <C-c>w          <Plug>(sexp_round_head_wrap_element)
  xmap <silent><buffer> <C-c>w          <Plug>(sexp_round_head_wrap_element)
  nmap <silent><buffer> <C-c>W          <Plug>(sexp_round_tail_wrap_element)
  xmap <silent><buffer> <C-c>W          <Plug>(sexp_round_tail_wrap_element)
  nmap <silent><buffer> <C-c>e[         <Plug>(sexp_square_head_wrap_element)
  xmap <silent><buffer> <C-c>e[         <Plug>(sexp_square_head_wrap_element)
  nmap <silent><buffer> <C-c>e]         <Plug>(sexp_square_tail_wrap_element)
  xmap <silent><buffer> <C-c>e]         <Plug>(sexp_square_tail_wrap_element)
  nmap <silent><buffer> <C-c>e{         <Plug>(sexp_curly_head_wrap_element)
  xmap <silent><buffer> <C-c>e{         <Plug>(sexp_curly_head_wrap_element)
  nmap <silent><buffer> <C-c>e}         <Plug>(sexp_curly_tail_wrap_element)
  xmap <silent><buffer> <C-c>e}         <Plug>(sexp_curly_tail_wrap_element)
  nmap <silent><buffer> <C-c>h          <Plug>(sexp_insert_at_list_head)
  nmap <silent><buffer> <C-c>l          <Plug>(sexp_insert_at_list_tail)
  nmap <silent><buffer> <C-c>@          <Plug>(sexp_splice_list)
  nmap <silent><buffer> <C-c>o          <Plug>(sexp_raise_list)
  xmap <silent><buffer> <C-c>o          <Plug>(sexp_raise_list)
  nmap <silent><buffer> <C-c>O          <Plug>(sexp_raise_element)
  xmap <silent><buffer> <C-c>O          <Plug>(sexp_raise_element)
  nmap <silent><buffer> <M-k>           <Plug>(sexp_swap_list_backward)
  xmap <silent><buffer> <M-k>           <Plug>(sexp_swap_list_backward)
  nmap <silent><buffer> <M-j>           <Plug>(sexp_swap_list_forward)
  xmap <silent><buffer> <M-j>           <Plug>(sexp_swap_list_forward)
  nmap <silent><buffer> <M-h>           <Plug>(sexp_swap_element_backward)
  xmap <silent><buffer> <M-h>           <Plug>(sexp_swap_element_backward)
  nmap <silent><buffer> <M-l>           <Plug>(sexp_swap_element_forward)
  xmap <silent><buffer> <M-l>           <Plug>(sexp_swap_element_forward)
  nmap <silent><buffer> <M-S-j>         <Plug>(sexp_emit_head_element)
  xmap <silent><buffer> <M-S-j>         <Plug>(sexp_emit_head_element)
  imap <silent><buffer> <M-S-j>         <Esc><Plug>(sexp_emit_head_element)a
  nmap <silent><buffer> <M-S-k>         <Plug>(sexp_emit_tail_element)
  xmap <silent><buffer> <M-S-k>         <Plug>(sexp_emit_tail_element)
  imap <silent><buffer> <M-S-k>         <Esc><Plug>(sexp_emit_tail_element)a
  nmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
  xmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
  imap <silent><buffer> <M-S-h>         <Esc><Plug>(sexp_capture_prev_element)a
  nmap <silent><buffer> <M-S-l>         <Plug>(sexp_capture_next_element)
  xmap <silent><buffer> <M-S-l>         <Plug>(sexp_capture_next_element)
  imap <silent><buffer> <M-S-l>         <Esc><Plug>(sexp_capture_next_element)a
  imap <silent><buffer> <BS>            <Plug>(sexp_insert_backspace)
  imap <silent><buffer> "               <Plug>(sexp_insert_double_quote)
  imap <silent><buffer> (               <Plug>(sexp_insert_opening_round)
  imap <silent><buffer> )               <Plug>(sexp_insert_closing_round)
  imap <silent><buffer> [               <Plug>(sexp_insert_opening_square)
  imap <silent><buffer> ]               <Plug>(sexp_insert_closing_square)
  imap <silent><buffer> {               <Plug>(sexp_insert_opening_curly)
  imap <silent><buffer> }               <Plug>(sexp_insert_closing_curly)
endfunction

" Out-of-lisp mappings:
" nnoremap <M-S-l> f)xea)<Esc>
" nnoremap <M-S-h> F(xbi(<Esc>
" nnoremap <M-S-k> f)a<BackSpace><Esc>gea)<Esc>
" nnoremap <M-S-j> F(xwi(<Esc>

" autocmd plugs.vimrc FileType clojure,scheme,lisp,hy,lfe,racket,lux,picolisp,jiv,min,nlang,markdown call s:vim_sexp_mappings()
autocmd plugs.vimrc FileType * call s:vim_sexp_mappings()

" TODO: This doesn't work
" autocmd plugs.vimrc FileType mkd umap =-
" }}}
Plug 'l04m33/vlime', { 'rtp': 'vim/', 'for': 'lisp' } " {{{
" autocmd plugs.vimrc FileType lisp <silent> <buffer> <LocalLeader>gi :call vlime#plugin#InteractionMode()<CR>
" TODO <LocalLeader><LocalLeader> for <LocalLeader>st
" let g:vlime_enable_autodoc = v:true
let g:vlime_window_settings = {
        \ 'repl': {
            \ 'size': 17,
        \ },
    \ }
augroup lisp.plugs.vimrc
    autocmd!
    autocmd FileType lisp nnoremap <silent> <buffer> X :call vlime#plugin#SendToREPL(vlime#ui#CurExprOrAtom())<cr>
augroup END
" }}}

" Clojure
Plug 'tpope/vim-fireplace', { 'for' : 'clojure' } " {{{
let g:fireplace_no_maps = 1
augroup clojure.plugs.vimrc
    autocmd!
    autocmd FileType clojure nmap <silent> <buffer> <C-g> <Plug>FireplaceK
    autocmd FileType clojure nnoremap <silent> <buffer> <Leader><C-g> :call openbrowser#search('<C-r><C-w>', 'clojuredocs')<CR>

    " Use vim-sexp mappings to keep cursor position (see :help sexp-mappings)
    autocmd FileType clojure nmap <silent> <buffer> X <Plug>FireplacePrint<Plug>(sexp_outer_list)``
    autocmd FileType clojure nmap <silent> <buffer> <Leader>x <Plug>FireplacePrint<Plug>(sexp_outer_top_list)``

    autocmd FileType clojure nnoremap <silent> <buffer> <Space>x :Require<CR>

    " TODO tidy up into a function, restore search reg
    autocmd FileType clojure map <silent> <buffer> <Leader>X ya(:-1put<CR><C-o><Plug>FireplaceCountFilter:Commentary<CR>:s/^; /; => /<CR>:let @/=''<CR>
    " )

    autocmd FileType clojure nnoremap <LocalLeader>rr :silent !chi-send motor "lein repl"<CR>:redraw!<CR>

    " TODO tidy up into a function
    autocmd FileType clojure nnoremap <LocalLeader>cc :Connect localhost:<C-r>=readfile(".nrepl-port")<CR><BS><Space><C-r>=expand('%:p:h')<CR><CR>

    autocmd FileType clojure map <C-]> <Plug>FireplaceDjump
    autocmd FileType clojure map <C-w><C-]> <Plug>FireplaceDsplit
augroup END
" }}}
Plug 'venantius/vim-cljfmt', { 'for' : 'clojure' } " {{{
autocmd plugs.vimrc FileType clojure nnoremap <buffer> <Space>f :Cljfmt<CR>
" }}}

" Racket
Plug 'wlangstroth/vim-racket', { 'for' : 'racket' }

" Lua
Plug 'tbastos/vim-lua', { 'for' : 'lua' }

" Python
Plug 'bps/vim-textobj-python', { 'for' : 'python' } " {{{
map ]f ]pf
map [f [pf
" }}}
Plug 'fisadev/vim-isort', { 'for' : 'python' }

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

" OCaml
" Plug 'rgrinberg/vim-ocaml', { 'for': 'ocaml' }
" Merlin {{{
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
autocmd plugs.vimrc FileType ocaml command! OpamHelptags :execute "helptags " . substitute(system('opam config var share'),'\n$','','''') .  "/merlin/vim/doc"
" }}}

" Rust
Plug 'rust-lang/rust.vim', { 'for' : 'rust' }
Plug 'racer-rust/vim-racer', { 'for' : 'rust' } " {{{
let g:racer_experimental_completer = 1
" }}}

" Ion
Plug 'vmchale/ion-vim', { 'for' : 'ion' }

" Zig
Plug 'ziglang/zig.vim', { 'for' : 'zig' } " {{{
" let g:zig_fmt_autosave = 1
" let g:zig_fmt_command = ['zig2', 'fmt', '--color', 'off']
" }}}

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
" Plug 'slashmili/alchemist.vim', { 'for' : 'elixir' } " {{{
" let g:alchemist_mappings_disable = 1
" nnoremap <buffer> <silent> <Leader>dd :call alchemist#exdoc()<CR>
" }}}
Plug 'mwgkgk/vim-textobj-elixir', { 'for' : 'elixir' }

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for' : 'haskell' }
" Plug 'eagletmt/ghcmod-vim', { 'for' : 'haskell' }

" Dhall
Plug 'vmchale/dhall-vim', { 'for' : 'dhall' }

" Idris
Plug 'idris-hackers/idris-vim', { 'for' : 'idris' }

" Lux
Plug 'mwgkgk/lux-vim', { 'for' : 'lux' }

" ATS
Plug 'vmchale/ats-vim', { 'for' : 'ats' }

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

call plug#end()

runtime .colors.vimrc

source ~/.vimrc
