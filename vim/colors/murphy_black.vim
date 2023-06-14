" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   Ron Aaron <ron@ronware.org>
" Last Change:  2003 May 02
" Updated to account for modern concepts such al colorcolumn :)
" Chunks of code from bubblegum.vim

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "murphy_black"

hi Normal       ctermbg=232  ctermfg=LightGreen guibg=Black        guifg=lightgreen
hi Comment      term=bold      ctermfg=LightRed   guifg=Orange
hi Constant     term=underline ctermfg=118 guifg=White   gui=NONE
hi Identifier   term=underline ctermfg=LightCyan  guifg=#00ffff
hi Ignore                      ctermfg=black      guifg=bg
hi PreProc      term=underline ctermfg=LightBlue  guifg=Wheat
hi Search       term=reverse   ctermbg=11         guifg=white   guibg=Blue
" hi Special      term=bold      ctermfg=LightRed   guifg=magenta
hi Special		ctermfg=180	   ctermbg=NONE	cterm=NONE
hi Statement    term=bold      ctermfg=181     guifg=#ffff00 gui=NONE
hi Type                        ctermfg=LightGreen guifg=grey    gui=none
hi Error        term=none   ctermbg=none    ctermfg=White guibg=Red  guifg=White
hi Todo         term=standout  ctermbg=181 ctermfg=Black guifg=Blue guibg=Yellow
" From the source:
hi Cursor                                         guifg=Orchid  guibg=fg
hi Directory    term=bold      ctermfg=LightCyan  guifg=Cyan
hi ErrorMsg     term=standout  ctermbg=DarkRed    ctermfg=White guibg=Red guifg=White
hi IncSearch    term=reverse   cterm=reverse      gui=reverse
hi LineNr       term=underline ctermfg=238 ctermbg=232   guifg=Yellow
hi ModeMsg      term=bold      cterm=bold         gui=bold
hi MoreMsg      term=bold      ctermfg=LightGreen gui=bold      guifg=SeaGreen
hi NonText      term=bold      ctermfg=235 gui=bold      guifg=Blue
hi Question     term=standout  ctermfg=LightGreen gui=bold      guifg=Cyan
hi SpecialKey   term=bold      ctermfg=LightBlue  guifg=Cyan
hi StatusLine   term=reverse,bold ctermfg=122 gui=NONE      guifg=White guibg=darkblue
hi StatusLineNC term=reverse   cterm=reverse      gui=NONE      guifg=white guibg=#333333
" hi Title        term=bold      ctermfg=LightMagenta gui=bold    guifg=Pink
hi Title		ctermfg=187	ctermbg=NONE	cterm=NONE
hi WarningMsg   term=standout  ctermfg=LightRed   guifg=Red
hi Visual       term=reverse   cterm=reverse      gui=NONE      guifg=white guibg=darkgreen

hi CursorColumn    ctermbg=235    cterm=none    guibg=#626262    gui=none
hi CursorLine      ctermbg=235    cterm=none    guibg=#626262    gui=none
hi CursorLineNr    ctermbg=235    cterm=bold    guibg=#626262    gui=none

hi Folded          ctermfg=244    ctermbg=bg    guifg=#808080    guibg=bg
hi FoldColumn      ctermfg=79     ctermbg=235    guifg=#5FD7AF    guibg=#3A3A3A
hi SignColumn      ctermfg=79     ctermbg=232    guifg=#5FD7AF    guibg=#3A3A3A
hi ColorColumn     ctermfg=79     ctermbg=235    guifg=#5FD7AF    guibg=#3A3A3A

hi Pmenu           ctermfg=fg     ctermbg=237    guifg=fg    guibg=#3A3A3A
hi PmenuSel        ctermfg=231    ctermbg=244    guifg=#FFFFFF    guibg=#808080
hi PmenuSbar       ctermfg=231    ctermbg=244    guifg=#FFFFFF    guibg=#808080
hi WildMenu        ctermfg=71     ctermbg=237    cterm=none    guifg=#5FAF5F    guibg=#3A3A3A    gui=none


" yellow
hi Constant        ctermfg=186    guifg=#D7D787
hi String          ctermfg=187    guifg=#D7D7AF
hi Character       ctermfg=187    guifg=#D7D7AF
hi Number          ctermfg=179    guifg=#D7AF5F
hi Boolean         ctermfg=187    guifg=#D7D7AF
hi Float           ctermfg=179    guifg=#D7AF5F

