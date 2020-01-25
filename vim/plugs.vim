" vim: foldmethod=marker foldlevel=0

" Big Refactor still in progress.

scriptencoding utf-8

call plug#begin('~/.vim/plugs')

augroup plugs
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
nnoremap s" :CtrlPRegister<CR>
inoremap <C-g><C-r> <C-O>:CtrlPRegister<CR>
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
      \ 'elixir' : ['credo', 'elixir-ls', 'mix'],
      \ }
let g:ale_tcl_nagelfar_executable = 'nagelfar'
let g:ale_sign_error = '>'
let g:ale_sign_warning = '!'
let g:ale_lint_on_save = 1
let g:ale_set_highlights = 0
nmap <silent> <F12>u <Plug>(ale_previous_wrap)
nmap <silent> _ <Plug>(ale_next_wrap)
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

Plug 'RogerioDosSantos/marvim' "{{{
let marvim_find_key='<Leader>m'
let marvim_store_key = '<Leader>"'
let marvim_load_key = '<Leader>M'
let marvim_register = 'q' " Default
let marvim_prefix = 0
" }}}

Plug '~/.vim/conf/_ultisnips/'
Plug 'SirVer/ultisnips'

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
            \   [['":"', '(:)', '[:]', '{:}'], 'sub_pairs'],
            \   [['  ', '. ', '..', '.:', '::']],
            \   [['today', 'tonight', 'tomorrow']],
            \   [['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']],
            \   [['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']],
            \   [['this', 'next']],
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

Plug '~/.vim/conf/_taboo.vim/'
Plug 'gcmt/taboo.vim'

Plug 'briandoll/change-inside-surroundings.vim' " {{{
" <Leader>ci by default
nnoremap cI :ChangeInsideSurrounding<CR>
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
        \ 'mj' : {
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

Plug 'andymass/vim-matchup' " {{{
" Jump to % of the file:
nnoremap ,, %
" }}}

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
Plug 'AndrewRadev/exercism.vim'

" Plug 'AndrewRadev/whitespaste.vim'

Plug 'sickill/vim-pasta'

" Plug 'inkarkat/vim-SyntaxRange' " {{{
" autocmd plugs FileType nlang call SyntaxRange#Include('@begin=c@', '@end=c@', 'c', 'NonText')
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

Plug 'airblade/vim-rooter' " {{{
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1
let g:rooter_use_lcd = 1
" }}}

Plug 'Valloric/ListToggle' " {{{
let g:lt_quickfix_list_toggle_map = '<Space>`'
let g:lt_location_list_toggle_map = "<Space>'"
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
" M replacement can be found in mappings.vim
nmap M `]
nmap U `[

hi link SignatureMarkText SignColumn
hi link SignatureMarkerText SignColumn

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
" autocmd plugs BufWrite *.elm :Autoformat
autocmd plugs FileType elm,haskell,idris,rust,ocaml,sh,perl,perl6,dhall,d,javascript,python,go,c nnoremap <buffer> <Space>f :Autoformat<CR>
autocmd plugs FileType markdown nnoremap <buffer> <Space>f :Trailing<CR>
autocmd plugs FileType scheme nnoremap <buffer> <Space>f :Trailing<CR>gg=G<C-O><C-O><CR>
" }}}

Plug 'terryma/vim-multiple-cursors' " {{{
" H & L replacements can be found in mappings.vim
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key = 'L'
let g:multi_cursor_prev_key = 'H'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'
" }}}

Plug 'Shougo/vimproc.vim', { 'do' : 'make' } " {{{
vnoremap gX y:call vimproc#system('bro url <C-R>"')<CR>
vnoremap gx y:call vimproc#system('firefox-default <C-R>" &')<CR>
vnoremap gs y:call vimproc#system('firefox-default https://google.com/search?hl=en&q=<C-R>" &')<CR>

" Xpdf gotoPage
nnoremap [gl :silent! VimProcBang xpdf -remote xpdfserv 'gotoPage\(<C-R><C-W>\)'<CR>
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

" autocmd plugs FileType markdown,jiv call deoplete#disable()
" inoremap <M-j> <C-n>
" inoremap <M-k> <C-p>

" inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" }}}
Plug 'Shougo/echodoc.vim' " {{{
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'popup'
" To use a custom highlight for the popup window,
" change Pmenu to your highlight group
highlight link EchoDocPopup Pmenu
" }}}

Plug 'skywind3000/asyncrun.vim' " {{{
nnoremap <Leader>r<Space> :AsyncRun<Space>
nnoremap <Space>r :AsyncRun tmux send -t motor C-u do-thing C-m<CR>
nnoremap <Space><Tab> :AsyncRun tmux send -t motor C-c && sleep 0.1 && tmux send -t motor C-c <CR>
" Refresh dev1 browser
" autocmd plugs BufWrite *.elm,*.html,*.css,*.ex,*.exs,*.tsx silent! AsyncRun refresh-dev1

" Open current file in browser
command! Chr AsyncRun chromium --incognito % &
command! Ff  AsyncRun firefox-dmenu % &
" }}}

Plug 'arecarn/selection.vim'
Plug 'arecarn/crunch.vim' " {{{
inoremap <C-g>= <Esc>vB:Crunch<CR>a
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

Plug '~/.vim/conf/_vim-operator-user/'
Plug 'kana/vim-operator-user'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line' " {{{
let g:textobj_line_no_default_key_mappings = 1
nmap vv v<Plug>(textobj-line-i)
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
Plug 'haya14busa/vim-textobj-function-syntax'

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
nmap <C-M-o> <Plug>(exjumplist-go-first)
nmap <C-M-t> <Plug>(exjumplist-go-last)
nmap <M-u> <Plug>(exjumplist-previous-buffer)
nmap <M-m> <Plug>(exjumplist-next-buffer)
" }}}

Plug 'thinca/vim-visualstar'
Plug 'tyru/operator-star.vim' " {{{
nmap <Leader>*  <Plug>(operator-*)
nmap <Leader>g* <Plug>(operator-g*)
nmap <Leader>#  <Plug>(operator-#)
nmap <Leader>g# <Plug>(operator-g#)
" }}}

Plug '~/.vim/conf/_open-browser.vim/'
Plug 'tyru/open-browser.vim'

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

map g[ <Plug>(IndentWisePreviousAbsoluteIndent)
map g] <Plug>(IndentWiseNextAbsoluteIndent)

map gK <Plug>(IndentWiseBlockScopeBoundaryBegin)
map gJ <Plug>(IndentWiseBlockScopeBoundaryEnd)
" }}}

" Plug 'wellle/targets.vim' " {{{
" let g:targets_separators = '. ; : + - ~ _ * \ |'
" }}}
Plug 'wellle/visual-split.vim' " :VSSplit, :VSResize

Plug 'junegunn/vim-after-object' " {{{
autocmd plugs VimEnter * call after_object#enable('=', ':', '-', '#', ' ', ';', ',', '.' )
" }}}
Plug 'junegunn/vader.vim'

Plug '~/.vim/conf/_fzf.vim/'
Plug 'junegunn/fzf.vim'

Plug 'junegunn/vim-peekaboo' " {{{
let g:peekaboo_delay = 200
let g:peekaboo_compact = 1
let g:peekaboo_window = 'bo 30new'
" }}}

Plug 'chauncey-garrett/vim-tasklist', { 'on' : '<Plug>TaskList' } " {{{
" Mnemonic: Toggle tasklist
nmap <leader>tt <Plug>TaskList
let g:tlTokenList = ['FIXME', 'TODO', 'XXX']
let g:tlRememberPosition = 1
let g:tlWindowPosition = 0
" }}}

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
map <M-j> <Plug>(edgemotion-j)
map <M-k> <Plug>(edgemotion-k)
" Poor man's horizontal edgemotion
map <M-h> B
map <M-l> E
" }}}

Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround' " {{{
" Wrapping in braces:
" imap <C-c><C-c> <Esc>hysiw)ea
nmap <C-c><C-c> <Esc>ysiw)
" imap <C-c>) <Esc>hysiw)ea
nmap <C-c>) <Esc>ysiw)
" Two words
nmap <C-c>l ys3iw)
" Not working
" nmap <C-c>h ys2b)
" Quotes
" imap <C-c>" <Esc>hysiW"ea
nmap <C-c>" <Esc>ysiW"
" imap <C-c>' <Esc>hysiW'ea
nmap <C-c>' <Esc>ysiW'
" imap <C-c>] <Esc>hysiW'ea
nmap <C-c>] <Esc>ysiW'
" }}}
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'

Plug '~/.vim/conf/_vim-rsi/'
Plug 'tpope/vim-rsi'

Plug '~/.vim/conf/_vim-fugitive/'
Plug 'tpope/vim-fugitive' " {{{
nnoremap <Leader>G :rightbelow Gstatus<CR>

nnoremap <Leader>D :Gvdiff<CR>

command! GCurrent :exe "Git commit -q %:p"
nnoremap <Leader>hC :GCurrent<CR>

command! GCurrentT :exe "Git commit -v -q %:p"
nnoremap <Leader>C :GCurrentT<CR>

" Slap date:
nnoremap <Leader>hd :GCurrent<CR>i<C-r>=system('date-utc <bar> tr -d "\n"')<CR><Esc>

" TODO Add and close: function GAddCommit
" function! GAddCommit()
"     let l:fname = expand('%')
"     !git add %
"     :GCurrent
"     append('iAdd ' . l:fname)
" endfunction

" Add
nnoremap <Leader>ha :G add %<CR>:G commit %:p -e -m "Add <C-r>=expand("%")<CR>"<CR>

" With preview
command! GAllPreview :silent exe "Git add ." | :silent exe "Git commit -v -q -a"
nnoremap <Leader>hA :GAllPreview<CR>

" Quick version: (LeaderLeader too busy atm)
" command! GAll :silent exe "Git add ." | :silent exe "Git commit -q -a"
" nnoremap <Leader><Leader> :GAll<CR>

nnoremap <Leader>hv :Git commit -v<CR>
nmap <Leader>hc <Plug>(GitGutterStageHunk):Git commit -v<CR>

" Git reset:
command! GReset :ProjectRootExe :AsyncRun git reset
nnoremap <Leader>hr :GReset<CR>:e!<CR>za

" nnoremap <Leader><Leader> :Gtabedit @<CR>

" Using vim-flog instead:
" nnoremap <Leader>gL :silent! Glog<CR>:bot copen<CR>
" Also, grep commit text in all or current file:
" :Glog --grep=query --
" :Glog --grep=query -- %
" Find text added by commit:
" :Glog --Sfindme --
" :Glog --Sfindme -- %
" }}}

Plug 'airblade/vim-gitgutter' " {{{

let g:gitgutter_sign_removed = '>'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

hi link GitGutterAdd SignColumn
hi link GitGutterChange SignColumn
hi link GitGutterDelete SignColumn
hi link GitGutterChangeDelete SignColumn

nnoremap <Leader>tg :GitGutterToggle<CR>

nnoremap <silent> <Leader>hg :GitGutterPreviewHunk<CR>

Plug '~/.vim/conf/_vim-gitgutter/'
Plug 'airblade/vim-gitgutter' " {{{

" Stage and verbose commit:
nmap <Leader>hh <Plug>(GitGutterStageHunk):GCurrentT<CR>

" Git-back
" TODO don't go further back than the origin
" TODO Move this to independent git plugin, or fugitive
nnoremap <Leader>gb :!git back<CR>

" Git-mes
" TODO Move this to independent git plugin, or fugitive
nnoremap <Leader>gr :!git mes<CR>

" Git-last-message
" TODO Move this to independent git plugin, or fugitive
nnoremap <silent> <Leader>gm :echo "<C-r>=systemlist('git log --oneline -1')[0]<CR>"<CR>
nnoremap <silent> <Leader>gM :echo "<C-r>=system('git log -1')<CR>"<CR>

" Git slurp: for staged hunks
" TODO Move this to independent git plugin, or fugitive
nnoremap <Leader>gs :!git commit --amend --no-edit<CR>

" Hunk slurp: Stage hunk and amend noedit
" TODO cancel out if we're not at least 1 commit ahead of upstream
nmap <Leader>hs <Plug>(GitGutterStageHunk):!git commit --amend --no-edit<CR>

" LeaderLeader to stage hunk and commit: (requires vim-fugitive)
autocmd plugs FileType * nmap <buffer> <Leader><Leader> :w<CR>yy<Plug>(GitGutterStageHunk):Git commit<CR>p:wq<CR><Space>
autocmd plugs FileType jiv,lisp,clojure nmap <buffer> <Leader><Leader> :w<CR>yaf<Plug>(GitGutterStageHunk):Git commit<CR>:let @"=substitute(@",'\n\s\+',' ','g')<CR>p:wq<CR><Space>

" Stage hunk & commit with message from the unnamed register
autocmd plugs FileType * nmap <buffer> <Leader>l <Plug>(GitGutterStageHunk):Git commit<CR>p:wq<CR><Space>
" }}}

Plug 'rbong/vim-flog' " {{{
" Big log
nnoremap <Leader>gl :Flog -all<CR>
" Log in file
nnoremap <Leader>gL :Flog -all -path=<C-R>=expand('%')<CR><CR>
" }}}

Plug 'mwgkgk/CamelCaseMotion' " {{{
" Default mappings: ,w ,b ,e   i,w i,b i,e
" kill-small-word insert mode:
imap <C-g><C-w> <Esc>,bcw
" }}}
Plug 'mwgkgk/vim-operator-append' " {{{
map <Leader>a <Plug>(operator-append)
" }}}
Plug 'mwgkgk/vim-operator-insert' " {{{
map <Leader>i <Plug>(operator-insert)
" }}}
Plug 'mwgkgk/vim-auto-mkdir'

Plug '~/.vim/conf/_vifm.vim/'
Plug 'vifm/vifm.vim'

Plug '~/.vim/conf/_vim-man/'
Plug 'vim-utils/vim-man', { 'on' : 'Man' }

" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ 'for': [
"     \   'rust',
"     \   'javascript', 'javascript.jsx',
"     \   'typescript', 'typescript.jsx',
"     \   'ocaml',
"     \   'clojure',
"     \ ]
"     \ } " {{{
" let g:LanguageClient_autoStart = 0
" let g:LanguageClient_loadSettings = 1
" let g:LanguageClient_settingsPath = $HOME . '/.vim/settings.json'
" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['rls'],
"     \ 'javascript': ['javascript-typescript-stdio'],
"     \ 'javascript.jsx': ['javascript-typescript-stdio'],
"     \ 'typescript': ['typescript-language-server', '--stdio'],
"     \ 'typescript.tsx': ['typescript-language-server', '--stdio'],
"     \ 'ocaml': ['ocaml-language-server', '--stdio'],
"     \ 'clojure': ['bash', '-c', 'clojure-lsp'],
"     \ }
" " \ 'javascript': ['typescript-language-server', '--stdio'],
" " \ 'javascript.jsx': ['typescript-language-server', '--stdio'],
" autocmd plugs FileType typescript,typescript.tsx
"     \ nnoremap <buffer> <Space>f :call LanguageClient#textDocument_formatting()<CR>
" let g:LanguageClient_diagnosticsDisplay = {
"     \     1: {
"     \         "name": "Error",
"     \         "texthl": "ALEError",
"     \         "signText": ">",
"     \         "signTexthl": "ALEErrorSign",
"     \     },
"     \     2: {
"     \         "name": "Warning",
"     \         "texthl": "ALEWarning",
"     \         "signText": "!",
"     \         "signTexthl": "ALEWarningSign",
"     \     },
"     \     3: {
"     \         "name": "Information",
"     \         "texthl": "ALEInfo",
"     \         "signText": "?",
"     \         "signTexthl": "ALEInfoSign",
"     \     },
"     \     4: {
"     \         "name": "Hint",
"     \         "texthl": "ALEInfo",
"     \         "signText": "➤",
"     \         "signTexthl": "ALEInfoSign",
"     \     },
"     \ }
" nnoremap <silent> <Leader>H :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> <Leader><Tab> :call LanguageClient#workspace_symbol()<CR>
" nnoremap <silent> <Leader>[ :call LanguageClient#textDocument_documentSymbol()<CR>
" nnoremap <silent> <Leader>] :call LanguageClient#textDocument_references()<CR>
" " nnoremap <silent> <Leader>] :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <Leader>' :call LanguageClient#textDocument_codeAction()<CR>
" nnoremap <silent> <Leader>` :call LanguageClient_contextMenu()<CR>
" " }}}

" Many languages
Plug 'sheerun/vim-polyglot' " {{{
let g:polyglot_disabled = ['markdown', 'racket']
" }}}

Plug '~/.vim/conf/_reply.vim/', { 'for' : ['sh', 'ocaml', 'elixir'] }
Plug 'rhysd/reply.vim', {
            \   'for' : ['sh', 'ocaml', 'elixir'],
            \   'on' : ['ReplSend', 'Repl']
            \ }

" Go
" Plug 'fatih/vim-go', { 'for' : 'go' }

" Perl
Plug 'hotchpotch/perldoc-vim', { 'for' : 'perl' }

" Sxhkd
Plug 'kovetskiy/sxhkd-vim', { 'for' : 'sxhkd' }

" Lisp
Plug '~/.vim/conf/_vim-sexp/'
Plug 'guns/vim-sexp'

Plug '~/.vim/conf/_vlime/', { 'for' : 'lisp' }
Plug 'l04m33/vlime', { 'rtp': 'vim/', 'for': 'lisp' }

" Plug '~/.vim/conf/_slimv/', { 'for' : 'lisp' }
" Plug 'kovisoft/slimv', { 'for' : 'lisp' }

" Clojure
if has('nvim')
    Plug 'Olical/conjure', { 'tag': 'v2.1.2', 'do': 'bin/compile' }
else
    Plug '~/.vim/conf/_vim-fireplace/', { 'for' : 'clojure' }
    Plug 'tpope/vim-fireplace', { 'for' : 'clojure' }
endif

Plug '~/.vim/conf/_vim-cljfmt/', { 'for' : 'clojure' }
Plug 'venantius/vim-cljfmt', { 'for' : 'clojure' }

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
autocmd plugs FileType hy set lisp
" }}}

" LFE
Plug 'lfe-support/vim-lfe', {'for' : 'lfe' } " {{{
autocmd plugs FileType lfe set lisp
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
Plug '~/.vim/conf/_alchemist.vim/', { 'for' : 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for' : 'elixir' }

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


" ||
" || Vimscript
" ||

" {{{
Plug 'tpope/vim-scriptease'

Plug 'fcpg/vim-complimentary', { 'for' : 'vim' }

" Auto-insert a leading backslash in Vimscript:
Plug 'lambdalisue/vim-backslash', { 'for' : 'vim' }
" }}}


" Local
if filereadable(glob("~/.local.plugs.vimrc")) 
    source ~/.local.plugs.vimrc
endif

" Colors
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher' " {{{
" F8, Shift-F8
" }}}

Plug '~/.vim/conf/_colorpolice-vim/'
" https://gitlab.com/mwgkgk/colorpolice-vim
Plug '~/shop/oil/colorpolice/colorpolice-vim/'

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

call plug#end()

source ~/.vim/plugs/vim-matchup/autoload/matchup/custom.vim

call matchup#custom#define_motion('nox', '%',
      \ 'matchup#custom#example_motion', { 'down': 1 })
call matchup#custom#define_motion('nox', 'g%',
      \ 'matchup#custom#example_motion', { 'down': 0 })
