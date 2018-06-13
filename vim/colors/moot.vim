" Vim color scheme
"
" Name:       moot.vim
" Maintainer: Ivan Brennan <ivan.brennan@gmail.com>
" License:    MIT

set background=dark

hi clear
if exists('syntax_on')
   syntax reset
endif

let g:colors_name = 'moot'

let s:black  = ['#0e1111', 232]
let s:egray  = ['#151515', 233]
let s:bgray  = ['#181818', 233]
let s:xgray  = ['#1c1c1c', 234]
let s:zgray  = ['#1c1e1f', 234]
let s:pgray  = ['#1f1f1f', 235]
let s:jgray  = ['#232323', 233]
let s:kgray  = ['#2c2f30', 242]
let s:vgray  = ['#252b32', 242]
let s:igray  = ['#272727', 242]
let s:mgray  = ['#2D3140', 242]
let s:cgray  = ['#737373', 243]
let s:ngray  = ['#757d80', 242]
let s:dgray  = ['#a9a9a9', 248]
let s:ogray  = ['#b8b8b8', 248]
let s:lgray  = ['#d3d3d3', 252]

let s:white00 = ['#eeeeee', 255]
let s:white01 = ['#dfe0e8', 255]

let s:magenta = ['#b4a0c5', 67]
let s:sblue   = ['#778899', 67]
let s:oblue   = ['#c4d5e5', 67]
let s:dblue   = ['#2d3b47', 67]
let s:yellow  = ['#ebc578', 226]
let s:orange  = ['#f8bb39', 160]
let s:red1    = ['#682421', 160]
let s:red     = ['#391716', 160]
let s:green   = ['#1d2717', 28]
let s:lime    = ['#bbe068', 28]
let s:melon   = ['#9bc53c', 28]
let s:tang    = ['#dfdf00', 28]
let s:tan     = ['#e2d91d', 226]
let s:berry   = ['#e80c4a', 28]

let s:cyan   = ['#26a6a6', 14]
let s:cyand  = ['#48778b', 66]
let s:cyanf  = ['#008787', 30]

let s:default_fg = s:lgray
let s:default_bg = s:jgray

let s:italic    = 'italic'
let s:bold      = 'bold'
let s:underline = 'underline'
let s:none      = 'NONE'

let s:none_lst    = [s:none, s:none]
let s:default_lst = []
let s:default_str = ''

if !exists("g:monochrome_italic_comments")
  let g:monochrome_italic_comments = 1
endif
let s:comment_attr = g:monochrome_italic_comments ? s:italic : s:none

function! s:hi(...) abort
    let group = a:1
    let fg    = get(a:, 2, s:default_fg)
    let bg    = get(a:, 3, s:default_bg)
    let attr  = get(a:, 4, s:default_str)
    let term  = get(a:, 4, s:default_str)

    let cmd = ['hi', group]

    if fg != s:default_lst
        call add(cmd, 'guifg='.fg[0])
        call add(cmd, 'ctermfg='.fg[1])
    endif

    if bg != s:default_lst
        call add(cmd, 'guibg='.bg[0])
        call add(cmd, 'ctermbg='.bg[1])
    endif

    if attr != s:default_str
        call add(cmd, 'gui='.attr)
        call add(cmd, 'cterm='.attr)
    endif

    if term != s:default_str
        call add(cmd, 'term='.term)
    endif

    exec join(cmd, ' ')
endfunction


"
" --- Vim interface ------------------------------------------------------------
"

call s:hi('Normal')
call s:hi('Cursor', s:black, s:lgray)
call s:hi('CursorLine', s:default_lst, s:igray, s:none, s:none)
call s:hi('CursorLineNr', s:ngray)
call s:hi('CursorColumn', s:default_lst, s:igray, s:none, s:none)
call s:hi('ColorColumn', s:default_fg, s:xgray)
call s:hi('IncSearch', s:orange, s:igray, s:bold)
call s:hi('Search', s:white00, s:mgray, s:none)
call s:hi('Visual', s:default_lst, s:mgray)
call s:hi('Title', s:white01, s:default_lst, s:bold)
call s:hi('ErrorMsg', s:lime, s:default_bg)
call s:hi('WarningMsg', s:orange, s:default_lst)
call s:hi('VertSplit', s:kgray, s:default_bg, s:none)
call s:hi('StatusLine', s:oblue, s:zgray, s:none)
call s:hi('StatusLineNC', s:cgray, s:zgray, s:none)

" Tildes at the bottom of a buffer, etc.
call s:hi('NonText', s:dgray)
call s:hi('EndOfBuffer', s:xgray, s:xgray)

" Folding.
call s:hi('FoldColumn', s:dgray)
call s:hi('Folded')

" Line numbers gutter.
call s:hi('LineNr', s:mgray)

" Small arrow used for tabs.
call s:hi('SpecialKey', s:cgray, s:default_bg)

" File browsers.
call s:hi('Directory', s:white01, s:default_bg, s:bold)

" Help.
call s:hi('helpSpecial')
call s:hi('helpHyperTextJump', s:sblue, s:default_bg, s:underline)
call s:hi('helpNote')

" Popup menu.
call s:hi('Pmenu', s:ngray, s:xgray)
call s:hi('PmenuSel', s:oblue, s:pgray, s:bold)
call s:hi('PmenuSbar', s:default_bg, s:default_bg)
call s:hi('PmenuThumb', s:dgray, s:mgray)

" Tabs.
call s:hi("TabLine", s:cgray, s:zgray, s:none)
call s:hi("TabLineFill", s:zgray, s:zgray, s:none)
call s:hi("TabLineSel", s:default_fg, s:default_bg, s:none)

" Notes.
call s:hi('Todo', s:lime, s:default_bg, s:bold)


"
" --- Programming languages ----------------------------------------------------
"

call s:hi('Statement', s:white01, s:default_bg, s:bold)
call s:hi('PreProc', s:white01, s:default_bg, s:bold)
call s:hi('String', s:cyan)
call s:hi('Comment', s:cyand, s:default_bg, s:comment_attr)
call s:hi('Number', s:magenta)
call s:hi('Constant')
call s:hi('Type', s:white01, s:default_bg, s:bold)
call s:hi('Function', s:white01)
call s:hi('Identifier')
call s:hi('Delimiter')
call s:hi('Special', s:yellow)
call s:hi('MatchParen', s:lime, s:default_bg, s:bold)
call s:hi('Question', s:cgray, s:default_bg)
call s:hi('ModeMsg', s:ngray, s:default_bg, s:none)
call s:hi('MoreMsg', s:ogray, s:default_lst, s:bold)


"
" --- C ------------------------------------------------------------------------
"

hi link cCustomFunc Function
hi link cBoolean    Boolean

"
" --- VimL ---------------------------------------------------------------------
"

call s:hi('vimOption')
call s:hi('vimGroup')
call s:hi('vimHiClear')
call s:hi('vimHiGroup')
call s:hi('vimHiAttrib')
call s:hi('vimHiGui')
call s:hi('vimHiGuiFgBg')
call s:hi('vimHiCTerm')
call s:hi('vimHiCTermFgBg')
call s:hi('vimSynType')
hi link vimCommand Statement
hi link vimCommentTitle Comment
hi link vimLet vimCommand
hi link vimVar Identifier
hi link vimFuncVar Identifier
hi link vimEnvvar PreProc


"
" --- Ruby ---------------------------------------------------------------------
"

call s:hi('rubyConstant')
call s:hi('rubySharpBang', s:cgray)
call s:hi('rubyStringDelimiter', s:sblue)
call s:hi('rubyStringEscape', s:sblue)
call s:hi('rubyRegexpEscape', s:sblue)
call s:hi('rubyRegexpAnchor', s:sblue)
call s:hi('rubyRegexpSpecial', s:sblue)


"
" --- Elixir -------------------------------------------------------------------
"

call s:hi('elixirAlias', s:default_fg, s:default_bg, s:none)
call s:hi('elixirDelimiter', s:sblue)
call s:hi('elixirSelf', s:default_fg, s:default_bg, s:none)

" For ||, ->, etc.
call s:hi('elixirOperator')

" Module attributes like @doc or @type.
hi link elixirVariable Statement

" While rendered as comments in other languages, docstrings are strings,
" experimental.
hi link elixirDocString String
hi link elixirDocTest String
hi link elixirStringDelimiter String


"
" --- Perl ---------------------------------------------------------------------
"

call s:hi('perlSharpBang', s:cgray)
call s:hi('perlStringStartEnd', s:sblue)
call s:hi('perlStringEscape', s:sblue)
call s:hi('perlMatchStartEnd', s:sblue)


"
" --- Python -------------------------------------------------------------------
"

call s:hi('pythonEscape', s:sblue)


"
" --- JavaScript ---------------------------------------------------------------
"

call s:hi('javaScriptFunction', s:white01, s:default_bg, s:bold)


"
" --- Diffs --------------------------------------------------------------------
"

call s:hi('diffFile', s:cgray)
call s:hi('diffNewFile', s:cgray)
call s:hi('diffIndexLine', s:cgray)
call s:hi('diffLine', s:cgray)
call s:hi('diffSubname', s:cgray)
call s:hi('DiffAdd', s:default_lst, s:green)
call s:hi('DiffDelete', s:xgray, s:xgray)
call s:hi('DiffChange', s:default_lst, s:red)
call s:hi('DiffText', s:lgray, s:red1, s:none)
hi link diffAdded DiffAdd
hi link diffRemoved DiffChange

"
" --- Markdown -----------------------------------------------------------------
"

call s:hi('markdownHeadingDelimiter', s:white01, s:default_bg, s:bold)
call s:hi('markdownHeadingRule', s:white01, s:default_bg, s:bold)
call s:hi('markdownLinkText', s:sblue, s:default_bg, s:underline)


"
" --- vim-fugitive -------------------------------------------------------------
"

call s:hi('gitcommitComment', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitOnBranch', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitBranch', s:sblue, s:default_bg, s:none)
call s:hi('gitcommitHeader', s:white01, s:default_bg, s:bold)
call s:hi('gitcommitSelected', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitDiscarded', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitSelectedType', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitDiscardedType', s:default_fg, s:default_bg, s:none)


"
" --- NeoMake ------------------------------------------------------------------
"

call s:hi('NeomakeMessageSign')
call s:hi('NeomakeWarningSign', s:sblue)
call s:hi('NeomakeErrorSign', s:yellow)
call s:hi('NeomakeInfoSign')
call s:hi('NeomakeError', s:yellow)
call s:hi('NeomakeInfo', s:default_fg, s:default_bg, s:bold)
call s:hi('NeomakeMessage')
call s:hi('NeomakeWarning', s:yellow)


"
" --- Traces ------------------------------------------------------------------
"

call s:hi('TracesSearch', s:orange, s:igray, s:none)
