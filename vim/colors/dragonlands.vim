if !has("gui_running") && &t_Co != 256 && &t_Co != 88
    echomsg ""
    echomsg "err: please use GUI or a 256-color terminal or 88-color terminal"
    echomsg ""
    finish
endif

if &background == "light"
    set background=dark
endif

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'dragonlands'

hi Comment         ctermfg=59 ctermbg=none cterm=none
hi Constant        ctermfg=138 ctermbg=none cterm=none
hi Cursor          ctermfg=167 ctermbg=none cterm=bold,reverse
hi CursorColumn    ctermfg=none ctermbg=235 cterm=none
hi CursorIM        ctermfg=250 ctermbg=none cterm=bold
hi CursorLine      ctermfg=none ctermbg=235 cterm=none
hi CursorLineNr    ctermfg=none ctermbg=235 cterm=none
hi DiffAdd         ctermfg=234 ctermbg=120 cterm=none
hi DiffChange      ctermfg=none ctermbg=240 cterm=none
hi DiffDelete      ctermfg=234 ctermbg=124 cterm=none
hi DiffText        ctermfg=250 ctermbg=240 cterm=bold
hi Directory       ctermfg=137 ctermbg=none cterm=none
hi Error           ctermfg=202 ctermbg=none cterm=none
hi ErrorMsg        ctermfg=202 ctermbg=none cterm=none
hi FoldColumn      ctermfg=250 ctermbg=016 cterm=none
hi Folded          ctermfg=243 ctermbg=235 cterm=none
hi Conceal         ctermfg=243 ctermbg=235 cterm=none
hi Identifier      ctermfg=151 ctermbg=none cterm=none
hi IncSearch       cterm=reverse
hi LineNr          ctermfg=242 ctermbg=233 cterm=none
hi MatchParen      ctermfg=167 ctermbg=137 cterm=bold
hi ModeMsg         ctermfg=101 ctermbg=none cterm=none
hi MoreMsg         ctermfg=101 ctermbg=none cterm=bold
hi NonText         ctermfg=237 ctermbg=none cterm=none
hi Normal          ctermfg=223 ctermbg=232 cterm=none
hi Pmenu           ctermfg=101 ctermbg=none cterm=none
hi PmenuSbar       ctermfg=101 ctermbg=137 cterm=none
hi PmenuSel        ctermfg=167 ctermbg=137 cterm=none
hi PreProc         ctermfg=137 ctermbg=none cterm=none
hi Question        ctermfg=040 ctermbg=none cterm=none
hi Search          cterm=none ctermbg=221
hi Special         ctermfg=101 ctermbg=none cterm=none
hi SpecialKey      ctermfg=101 ctermbg=none cterm=bold
hi Statement       ctermfg=167 ctermbg=none cterm=none
hi StatusLine      ctermfg=249 ctermbg=236 cterm=bold
hi StatusLineNC    ctermfg=243 ctermbg=236 cterm=none
hi TabLine         ctermfg=238 ctermbg=none cterm=none
hi TabLineFill     ctermfg=000 ctermbg=none cterm=none
hi TabLineSel      ctermfg=242 ctermbg=none cterm=none
hi Title           ctermfg=167 ctermbg=none cterm=bold
hi Todo            ctermfg=000 ctermbg=101 cterm=none
hi Type            ctermfg=250 ctermbg=none cterm=none
hi Underlined      ctermfg=101 ctermbg=none cterm=underline
hi VertSplit       ctermfg=236 ctermbg=236 cterm=none
hi Visual          ctermbg=none cterm=reverse
hi VisualNOS       ctermbg=137 cterm=reverse
hi WarningMsg      ctermfg=167 ctermbg=none cterm=none
hi WildMenu        ctermfg=000 ctermbg=167 cterm=reverse
hi ColorColumn     ctermbg=235
hi SignColumn      ctermbg=233 ctermfg=228 ctermbg=none

hi markdownH1 ctermfg=193 cterm=bold
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1

hi yamlKey cterm=bold
