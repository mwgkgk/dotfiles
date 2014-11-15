" Based on DimGreens.vim; which in turn was based on Dim.vim

" Colors used:
" #001800
" #99aa99
" #000800
" #000000 black
" #228b22 ForestGreen
" #698B69 DarkSeaGreen4
" #448844
" #8B864E khaki4
" grey10
" yellow4
" SeaGreen4
" aquamarine4
" green4
" khaki4
" yellow4


hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "gnaarmok"

set background=dark

" let s:black=#000000

" Default colors
hi Normal          guifg=#448844        guibg=black         gui=NONE
hi NonText         guifg=#697B69        guibg=black         gui=NONE
hi SpecialKey      guifg=khaki4         guibg=black         gui=NONE
hi Cursor          guifg=black          guibg=khaki4        gui=NONE
hi CursorLine      guifg=NONE           guibg=#203040       gui=NONE

" Search
hi Search          guifg=black          guibg=LightSkyBlue4 gui=none
hi IncSearch       guifg=black          guibg=LightSkyBlue3 gui=bold

" Window elements
" hi StatusLine
" hi StatusLineNC
hi Visual          guifg=darkolivegreen guibg=fg            gui=reverse
" hi MoreMsg
" hi Question
" hi WildMenu
hi LineNr guifg=#448844 guibg=black gui=none
hi CursorLineNr guifg=khaki4 guibg=black gui=bold
" hi SignColumn
hi ColorColumn     guifg=NONE       guibg=#1A2128    gui=NONE

" Tabs
hi TabLine guibg=black guifg=#448844 gui=none
hi TabLineFill guibg=black guifg=black gui=none
hi TabLineSel guibg=black guifg=#eeeeec gui=none

hi Statement guifg=ForestGreen gui=bold
hi Statement guifg=DarkOliveGreen4 gui=bold
"hi Statement guifg=khaki4 gui=bold
hi Constant guifg=OliveDrab
hi Identifier guifg=#46AD8A
hi Identifier guifg=ForestGreen
"hi Identifier guifg=aquamarine4
hi Function guifg=ForestGreen gui=bold
hi pythonFunction guifg=ForestGreen gui=bold
hi Special guifg=PaleGreen3
hi Comment guifg=DarkSeaGreen4
hi Comment guifg=SkyBlue4
hi Comment guifg=DarkSlateGray4
"hi Comment guibg=black guifg=ForestGreen
hi PreProc guifg=wheat4



hi Character guifg=CadetBlue3
hi Character guifg=CadetBlue4
" hi SpecialKey guifg=CadetBlue3
" hi SpecialKey guifg=CadetBlue4
hi Directory guifg=SkyBlue3
hi Directory guifg=SkyBlue4

hi Type guifg=#9D7530 gui=none



hi Title guifg=#9D7530
hi htmlTitle guifg=#9D7530 gui=bold
hi link htmlH1 htmlTitle
hi link htmlH2 htmlH1
hi link htmlH3 htmlH1
hi link htmlH4 htmlH1
hi link htmlH5 htmlH1
hi link htmlH6 htmlH1

"
" Colors not part of the original set:
"
hi Folded guifg=black guibg=grey55


hi WarningMsg guifg=red guibg=GhostWhite gui=bold
hi Error guibg=red3

