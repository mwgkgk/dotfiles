" Bundle 'scrooloose/nerdtree'
" nnoremap <F2> :let NERDTreeWinPos = "left"<cr>:NERDTreeFind<cr>
" nnoremap <F3> :let NERDTreeWinPos = "right"<cr>:NERDTreeFind<cr>
" let g:NERDTreeQuitOnOpen=1

" Ultisnips + YouCompleteMe compatibility:

" function! g:UltiSnips_Complete()
"     call UltiSnips_ExpandSnippet()
"     if g:ulti_expand_res == 0
"         " if pumvisible()
"             return "\<C-n>"
"         else
"             call UltiSnips_JumpForwards()
"             if g:ulti_jump_forwards_res == 0
"                return "\<TAB>"
"             endif
"         endif
"     endif
"     return ""
" endfunction

" Shougo/neocomplete.vim
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#sources#syntax#min_keyword_length = 4
" let g:neocomplete#auto_completion_start_length = 4
" let g:neocomplete#enable_auto_delimiter = 1
" let g:neocomplete#enable_fuzzy_completion = 0
"
" <TAB>: completion.
" inoremap <expr><Tab>  neocomplete#start_manual_complete()
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()
" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" MatchTagAlways :
" let g:mta_filetypes = {
"     \ 'html' : 1,
"     \ 'htmldjango' : 1,
"     \ 'xhtml' : 1,
"     \ 'xml' : 1,
"     \ 'jinja' : 1,
"     \}
" let g:mta_use_matchparen_group=0
" let g:mta_set_default_matchtag_color=0
" autocmd ColorScheme * highlight MatchTag guifg=lightgreen guibg=NONE

" Vim-smooth-scroll
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>

" " Dragvisuals
" vmap  <expr>  <C-h>  DVB_Drag('left')
" vmap  <expr>  <C-l>  DVB_Drag('right')
" vmap  <expr>  <C-j>  DVB_Drag('down')
" vmap  <expr>  <C-k>  DVB_Drag('up')
" CamelCaseMotion
" map <silent> W <Plug>CamelCaseMotion_w
" map <silent> B <Plug>CamelCaseMotion_b
" map <silent> E <Plug>CamelCaseMotion_e
" sunmap W
" sunmap B
" sunmap E

" machakann/vim-columnmove
" let g:columnmove_no_default_key_mappings = 1
" let g:columnmove_strict_wbege = 0
"
" nmap <Space>j <Plug>(columnmove-f)
" vmap <Space>j <Plug>(columnmove-f)
" omap <Space>j V<Plug>(columnmove-f)
"
" nmap <Space>k <Plug>(columnmove-F)
" vmap <Space>k <Plug>(columnmove-F)
" omap <Space>k V<Plug>(columnmove-F)
"
" nmap <Space>w <Plug>(columnmove-w)
" vmap <Space>w <Plug>(columnmove-w)
" omap <Space>w V<Plug>(columnmove-w)
"
" nmap <Space>e <Plug>(columnmove-e)
" vmap <Space>e <Plug>(columnmove-e)
" omap <Space>e V<Plug>(columnmove-e)
"
" nmap <Space>ge <Plug>(columnmove-ge)
" vmap <Space>ge <Plug>(columnmove-ge)
" omap <Space>ge V<Plug>(columnmove-ge)
"
" nmap <Space>b <Plug>(columnmove-b)
" vmap <Space>b <Plug>(columnmove-b)
" omap <Space>b V<Plug>(columnmove-b)
"
" nmap <Space>; <Plug>(columnmove-;)

" t9md/vim-smalls:
nmap s <Plug>(smalls)
xmap s <Plug>(smalls)
omap S V<Plug>(smalls)
" function! g:UltiSnips_Complete()
"     call UltiSnips#ExpandSnippet()
"     if g:ulti_expand_res == 0
"         if pumvisible()
"             return "\<C-P>"
"         endif
"         if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"             return "\<Tab>"
"         " elseif exists('&omnifunc') && &omnifunc != ''
"         "     return "\<C-X>\<C-O>"
"         else
"             return "\<C-P>"
"         endif
"     endif
"     return ""
" endfunction

" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

snippet "([\w\s]+)?st" "HTML Style" !irs
`!p
if match.group(1) is not None:
	snip.rv = match.group(1).rstrip() + ' '
else:
	snip.rv = ' '`style="${1}${VISUAL}"
endsnippet
" Vifm.vim
" let g:vifm_term = 'urxvt -e'
" let g:vifm_exec_args = "-c 'colorscheme GreenDay'"
" nnoremap <F2> :SplitVifm<CR>

" - Insert mode newline below (needs more work):
" inoremap <C-o> <Esc>O
Plug 'airblade/vim-gitgutter', { 'on' : 'GitGutterToggle' } " {{{
let g:gitgutter_enabled = 0
nnoremap <leader>tg :GitGutterToggle<CR>
" }}}

Plug 'maxbrunsfeld/vim-yankstack' " {{{
let g:yankstack_map_keys = 0
let g:yankstack_yank_keys = ['c', 'C', 'd', 'D', 'x', 'X', 'y', 'Y']
nmap <leader>a <Plug>yankstack_substitute_older_paste
nmap <leader>x <Plug>yankstack_substitute_newer_paste

" call yankstack#setup()
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
Plug 'miyakogi/conoline.vim' " {{{
let g:conoline_colorscheme_normal=0
let g:conoline_color_normal_dark = 'ctermbg=236'
let g:conoline_color_normal_nr_dark='ctermbg=236'
let g:conoline_color_insert_dark = 'ctermbg=234'
let g:conoline_color_insert_nr_dark = 'ctermbg=210'
let g:conoline_color_normal_light = 'ctermbg=230'
let g:conoline_color_normal_nr_light='ctermbg=230'
let g:conoline_color_insert_light = 'ctermbg=230'
let g:conoline_color_insert_nr_light = 'ctermbg=6'
" }}}

Plug 'scrooloose/syntastic', { 'for' : ['python', 'javascript', 'cpp'] } " {{{
nnoremap <Leader>ss :SyntasticCheck<CR>
nnoremap <Leader>st :SyntasticToggleMode<CR>
nnoremap <Leader>se :Errors<CR>
nnoremap <Leader>sn :lnext<CR>
nnoremap <Leader>sp :lprev<CR>
let g:syntastic_python_checkers = ['python', 'pylint2']
let g:syntastic_python_pylint_exec = 'python'
" let g:syntastic_python_pylint_postargs
let g:syntastic_javascript_checkers = ['jshint'] 
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_cpp_cpplint_args = '--filter=-legal/copyright'
" let g:syntastic_html_checkers = ['w3', 'validator']
" }}}
Plug 'prendradjaja/vim-vertigo' " {{{
function! VertigoWrap(direction, mode)
    if (&rnu == 1)
        let l:nogoingback = 1
    else
        let l:nogoingback = 0
        let &rnu = 1
    endif
    execute 'Vertigo' . a:direction . ' ' . a:mode
    if (l:nogoingback == 0)
        let &rnu = 0
    endif
endfunction
nnoremap <silent> gj :call VertigoWrap('Down', 'n')<CR>
vnoremap <silent> gj :call VertigoWrap('Down', 'v')<CR>
onoremap <silent> gj :call VertigoWrap('Down', 'o')<CR>
nnoremap <silent> gk :call VertigoWrap('Up', 'n')<CR>
vnoremap <silent> gk :call VertigoWrap('Up', 'v')<CR>
onoremap <silent> gk :call VertigoWrap('Up', 'o')<CR>
" }}}
Plug 'maralla/completor.vim' " {{{
let g:completor_disable_ultisnips = 1
" imap <expr> <C-t> pumvisible() ? "\<C-n> " : "\<C-t>"
inoremap <C-t> <C-n> 
" }}}


" Plug 'tomtom/tcomment_vim' " {{{
" " Comment and clone
" nnoremap gcd yypk:TComment<CR>j
" " }}}
Plug 'pgilad/vim-skeletons' " {{{
let skeletons#autoRegister = 1
command! SKBash :%!cat ~/.vim/skeletons/skeleton.sh
command! SKBashF :%!cat ~/.vim/skeletons/skeleton.f.sh.
command! SKPython :%!cat ~/.vim/skeletons/skeleton.py
command! SKElm :%!cat ~/.vim/skeletons/skeleton.elm
command! SKIdr :%!cat ~/.vim/skeletons/skeleton.idr
command! SKKB :%!cat ~/.vim/skeletons/skeleton.kb.mkd.
" }}}
Plug 'Rykka/clickable.vim' " {{{
let g:clickable_browser = 'firefox-default'
hi _clickable_file ctermbg=none ctermfg=11 cterm=underline
hi _clickable_link ctermbg=none ctermfg=11 cterm=underline
" }}}

Plug 'oblitum/rainbow' " {{{
let g:rainbow_active = 0
let g:rainbow_ctermfgs = ['104', '146', '217', '208', '250', '255']
nnoremap <Leader>tR :RainbowToggle<CR>
" }}}
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

Plug 'mattn/webapi-vim'
Plug '7kfpun/finance.vim' " {{{
let g:finance_watchlist = ['AAPL', 'FB', 'AMZN', 'GOOG', 'BIDU']
let g:finance_format = '{1. symbol}:	{2. price}	({3. volume})'
let g:exchange_currencies = ['BTC', 'USD']
nnoremap <F7> :Exchange<CR>
nnoremap [15;2~ :Exchange ETH USD<CR>
nnoremap [18;5~ :Finance<CR>
" }}}

Plug 'cohama/agit.vim' " {{{
" let g:agit_no_default_mappings = 1
let g:agit_enable_auto_show_commit = 0
nnoremap <Space>A :Agit<CR>
" }}}

Plug 'nathanaelkane/vim-indent-guides', { 'for' : ['nim'] }
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
" This should only be in nim
" autocmd plugs.vimrc VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=232
" }}}

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

Plug 'vim-scripts/JumpToVerticalOccurrence' " [V{char}, [v, [|, [!
" {{{
nmap <Leader>f ]V
nmap <Leader>F [V
" }}}
Plug 'Yilin-Yang/vim-markbar', { 'branch': 'mvc' } " {{{
map m<Space> <Plug>ToggleMarkbar
let g:markbar_delete_mark_mapping='<Del>'
" }}}
Plug 'andymass/vim-matchup' " {{{
let g:matchup_surround_enabled = 1

nmap q <plug>(matchup-%)
" nmap gq <plug>(matchup-g%)
nmap gQ <plug>(matchup-[%)
nmap gq <plug>(matchup-]%)
nmap <Leader>q <plug>(matchup-z%)

nmap dsq <plug>(matchup-ds%)
nmap csq <plug>(matchup-cs%)

omap q <plug>(matchup-o_)<plug>(matchup-%)
" omap gq <plug>(matchup-o_)<plug>(matchup-g%)
omap aq <plug>(matchup-o_)<plug>(matchup-a%)
omap iq <plug>(matchup-o_)<plug>(matchup-i%)
omap gQ <plug>(matchup-o_)<plug>(matchup-[%)
omap gq <plug>(matchup-o_)<plug>(matchup-]%)
omap <Leader>q <plug>(matchup-o_)<plug>(matchup-z%)

xmap q <plug>(matchup-%)
" xmap gq <plug>(matchup-g%)
xmap gQ <plug>(matchup-[%)
xmap gq <plug>(matchup-]%)
xmap <Leader>q <plug>(matchup-z%)
xmap iq <plug>(matchup-i%)
xmap aq <plug>(matchup-a%)
" }}}
" Seems to require vim-dispatch and vim-projectionist? Commands not available
" Plug 'tpope/vim-salve', { 'for' : 'clojure' } " {{{
" let g:salve_auto_start_repl = 1
" }}}

" Plug 'dbakker/vim-projectroot' " {{{
" let g:rootmarkers = ['.projectroot','LICENRSE','.git',
"             \        '.hg','.svn','.bzr','_darcs','build.xml']
" nnoremap <Leader>ep :echo ProjectRootGuess()<CR>
" nnoremap <Leader>dt :ProjectRootExe !ctags -R<CR>
" " - Projectroot Make
" command! Make :silent! ProjectRootExe make | redraw!
" nnoremap <Leader>dm :Make<CR>
" command! InstallHooks :silent! ProjectRootExe ln -s ~/.git-templates/hooks/* .
" " Deps
" autocmd plugs.vimrc FileType rust nnoremap <F12> :ProjectRootExe :sp Cargo.toml<CR>G
" " Taskfile
" nnoremap <F11> :ProjectRootExe :sp Taskfile.yml<CR>
" " Tags
" autocmd plugs.vimrc BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
" autocmd plugs.vimrc BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&"
" " }}}
" Plug 'airblade/vim-rooter' " {{{
" let g:rooter_silent_chdir = 1
" let g:rooter_resolve_links = 1
" let g:rooter_use_lcd = 1
" " }}}
