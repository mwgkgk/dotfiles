" Vim color file
" Derived from AutumnLeaf by Anders Korte

set background=light

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name="sunday256"

hi Cursor         ctermbg=6   ctermfg=14    guibg=#008080 guifg=#00ffff
hi Normal         ctermbg=15  ctermfg=0    guibg=#ffffff guifg=#000000
hi Visual         ctermbg=110 ctermfg=0    guibg=#87afd7 guifg=#000000
" hi VisualNOS
hi Linenr         ctermbg=bg  ctermfg=7     guibg=bg      guifg=#c0c0c0

hi DiffAdd        ctermbg=120 ctermfg=0    guibg=#87ff87 guifg=#000000
hi DiffDelete     ctermbg=224 ctermfg=0    guibg=#ffd7d7 guifg=#000000
hi DiffChange     ctermbg=152 ctermfg=255   guibg=#afd7d7 guifg=#eeeeee
hi DiffText       ctermbg=153 ctermfg=0    guibg=#afd7ff guifg=#000000

hi Directory      ctermbg=bg  ctermfg=2    guibg=bg      guifg=#3EFF3E
hi IncSearch      ctermbg=190 ctermfg=0    guibg=#d7ff00 guifg=#000000
hi Search         ctermbg=190 ctermfg=0    guibg=#d7ff00 guifg=#000000
hi SpecialKey                 ctermfg=251                guifg=#c6c6c6
hi NonText                    ctermfg=251                guifg=#c6c6c6
hi Titled         ctermbg=bg  ctermfg=fg   guibg=bg      guifg=fg
hi ErrorMsg       ctermbg=bg  ctermfg=12   guibg=bg      guifg=#0000ff
hi ModeMsg        ctermbg=bg  ctermfg=113  guibg=bg      guifg=#87d75f
hi WarningMsg     ctermbg=bg  ctermfg=12   guibg=bg      guifg=#0000ff
hi StatusLine     ctermbg=6   ctermfg=255  guibg=#008080 guifg=#eeeeee
hi StatusLineNC   ctermbg=6   ctermfg=255  guibg=#008080 guifg=#eeeeee
hi VertSplit      ctermbg=6   ctermfg=255  guibg=#008080 guifg=#eeeeee

hi CursorLine     ctermbg=230 cterm=none   guibg=#ffff87 gui=none
hi CursorColumn   ctermbg=230 cterm=none   guibg=#ffff87 gui=none
hi ColorColumn    ctermbg=224 cterm=none   guibg=#ffd7d7 gui=none

hi Folded         ctermbg=255 ctermfg=0    guibg=#eeeeee guifg=#000000
hi FoldColumn     ctermbg=255 ctermfg=0    guibg=#eeeeee guifg=#000000
hi SignColumn     ctermbg=255 ctermfg=0    guibg=#eeeeee guifg=#000000

hi Comment                    ctermfg=251                  guifg=#c6c6c6
hi Constant       ctermbg=bg  ctermfg=113    guibg=bg      guifg=#87d75f

hi String ctermbg=bg ctermfg=113 cterm=italic guibg=bg guifg=#87d75f gui=italic
hi Character ctermbg=bg ctermfg=113 cterm=italic guibg=bg guifg=#87d75f gui=italic
hi Number ctermbg=bg ctermfg=113 cterm=bold guibg=bg guifg=#87d75f gui=bold
hi Boolean ctermbg=bg ctermfg=113 cterm=bold guibg=bg guifg=#87d75f gui=bold
hi Float ctermbg=bg ctermfg=113 cterm=bold guibg=bg guifg=#87d75f gui=bold
hi Function ctermbg=bg ctermfg=113 cterm=bold guibg=bg guifg=#87d75f gui=bold
hi Statement ctermbg=bg ctermfg=113 cterm=bold guibg=bg guifg=#87d75f gui=bold
hi Conditional ctermbg=bg ctermfg=6 cterm=bold guibg=bg guifg=#008080 gui=bold
hi Repeat ctermbg=bg ctermfg=6 cterm=bold guibg=bg guifg=#008080 gui=bold
hi Operator ctermbg=bg ctermfg=6 cterm=bold guibg=bg guifg=#008080 gui=bold
hi Exception ctermbg=bg ctermfg=2 cterm=bold guibg=bg guifg=#3EFF3E gui=bold
hi PreProc ctermbg=bg ctermfg=6 guibg=bg guifg=#008080
hi Include ctermbg=bg ctermfg=2 cterm=bold guibg=bg guifg=#3EFF3E gui=bold
hi Type ctermbg=bg ctermfg=2 cterm=bold guibg=bg guifg=#3EFF3E gui=bold
hi Typedef ctermbg=bg ctermfg=2 cterm=italic guibg=bg guifg=#3EFF3E gui=italic
hi Special ctermbg=bg ctermfg=fg cterm=none guibg=bg guifg=fg gui=none
hi Tag ctermbg=bg ctermfg=113 cterm=bold guibg=bg guifg=#87d75f gui=bold
hi SpecialComment ctermbg=7 ctermfg=4 guibg=#c0c0c0 guifg=#000080
hi Underlined ctermbg=bg ctermfg=113 cterm=underline guibg=bg guifg=#87d75f gui=underline
hi Title ctermbg=bg ctermfg=fg cterm=bold guibg=bg guifg=fg gui=bold
hi Ignore ctermbg=bg ctermfg=7 guibg=bg guifg=#c0c0c0
hi Error ctermbg=224 ctermfg=0 guibg=#ffd7d7 guifg=#000000
hi Todo ctermbg=bg ctermfg=15 guibg=bg guifg=#ffffff


hi TabLine        ctermbg=15  ctermfg=fg cterm=none guibg=#ffffff guifg=fg gui=none
hi TabLineFill    ctermbg=15  ctermfg=fg cterm=none guibg=#ffffff guifg=fg gui=none
hi TabLineSel     ctermbg=224 ctermfg=fg cterm=none guibg=#ffd7d7 guifg=fg gui=none


" Ultisnip/Snipmate
hi snipLeadingSpaces ctermbg=255 ctermfg=fg cterm=none guibg=#eeeeee guifg=fg gui=none
