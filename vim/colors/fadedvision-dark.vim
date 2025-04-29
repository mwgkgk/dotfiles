if !has("") && &t_Co != 256 && &t_Co != 88
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

let g:colors_name = 'fadedvision-dark'

hi Comment         ctermfg=028 ctermbg=none cterm=none
hi Constant        ctermfg=041 ctermbg=none cterm=none
hi Cursor          ctermfg=010 ctermbg=none cterm=bold,reverse
hi CursorColumn    ctermfg=none ctermbg=233 cterm=none
hi CursorIM        ctermfg=046 ctermbg=none cterm=bold
hi CursorLine      ctermfg=none ctermbg=233 cterm=none
hi CursorLineNr    ctermfg=none ctermbg=233 cterm=none
hi DiffAdd         ctermfg=233 ctermbg=120 cterm=none
hi DiffChange      ctermfg=none ctermbg=240 cterm=none
hi DiffDelete      ctermfg=233 ctermbg=124 cterm=none
hi DiffText        ctermfg=208 ctermbg=240 cterm=bold
hi Directory       ctermfg=022 ctermbg=none cterm=none
hi Error           ctermfg=176 ctermbg=010 cterm=none
hi ErrorMsg        ctermfg=176 ctermbg=010 cterm=none
hi FoldColumn      ctermfg=046 ctermbg=016 cterm=none
hi Folded          ctermfg=241 ctermbg=232 cterm=none
hi Conceal         ctermfg=243 ctermbg=233 cterm=none
hi Identifier      ctermfg=118 ctermbg=none cterm=none
hi IncSearch       cterm=reverse
hi LineNr          ctermfg=237 ctermbg=016 cterm=none
hi MatchParen      ctermfg=010 ctermbg=022 cterm=bold
hi ModeMsg         ctermfg=002 ctermbg=none cterm=none
hi MoreMsg         ctermfg=002 ctermbg=none cterm=bold
hi NonText         ctermfg=022 ctermbg=none cterm=none
hi Normal          ctermfg=083 ctermbg=232 cterm=none
hi Pmenu           ctermfg=002 ctermbg=none cterm=none
hi PmenuSbar       ctermfg=028 ctermbg=022 cterm=none
hi PmenuSel        ctermfg=010 ctermbg=022 cterm=none
hi PreProc         ctermfg=047 ctermbg=none cterm=none
hi Question        ctermfg=040 ctermbg=none cterm=none
hi Search          cterm=reverse
hi Special         ctermfg=002 ctermbg=none cterm=none
hi SpecialKey      ctermfg=028 ctermbg=none cterm=bold
hi Statement       ctermfg=010 ctermbg=none cterm=none
hi StatusLine      ctermfg=245 ctermbg=233 cterm=bold
hi StatusLineNC    ctermfg=242 ctermbg=233 cterm=none
hi TabLine         ctermfg=040 ctermbg=none cterm=none
hi TabLineFill     ctermfg=000 ctermbg=none cterm=none
hi TabLineSel      ctermfg=046 ctermbg=022 cterm=bold
hi Title           ctermfg=010 ctermbg=none cterm=bold
hi Todo            ctermfg=000 ctermbg=002 cterm=none
hi Type            ctermfg=046 ctermbg=none cterm=none
hi Underlined      ctermfg=002 ctermbg=none cterm=underline
hi VertSplit       ctermfg=233 ctermbg=233 cterm=none
" Used to be: ctermbg=none cterm=reverse
" Something happened
hi Visual          ctermbg=046 cterm=underline
hi VisualNOS       ctermbg=022 cterm=reverse
hi WarningMsg      ctermfg=010 ctermbg=none cterm=none
hi WildMenu        ctermfg=000 ctermbg=010 cterm=reverse
hi ColorColumn     cterm=none ctermbg=233
hi SignColumn      ctermbg=232

hi markdownH1 ctermfg=82 cterm=bold
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1

hi yamlKey cterm=bold

" Nvim fixes
hi! link Function Identifier
hi! link String Constant
