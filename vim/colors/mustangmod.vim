" Maintainer:   Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Last Change:  September 25 2008

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mustangmod"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#2d2d2d gui=none ctermbg=235 cterm=none
  hi CursorColumn guibg=#2d2d2d ctermbg=235
  " hi ColorColumn guibg=#454343 ctermbg=70
  hi ColorColumn guibg=#454343 ctermbg=235
  hi MatchParen guifg=#d0ffc0 guibg=#2f2f2f gui=bold ctermfg=157 ctermbg=237 cterm=bold
  hi Pmenu      guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel   guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
endif

" General colors 
hi Cursor       guifg=NONE    guibg=#626262 gui=none ctermbg=241
hi Normal       guifg=#e2e2e5 guibg=#202020 gui=none ctermfg=251 ctermbg=234
hi NonText      guifg=#808080 guibg=#202020 gui=none ctermfg=237 ctermbg=234
hi LineNr       guifg=#808080 guibg=#000000 gui=none ctermfg=244 ctermbg=232
hi StatusLine   guifg=#d3d3d5 guibg=#444444 gui=bold ctermfg=241 ctermbg=235 cterm=bold
hi StatusLineNC guifg=#939395 guibg=#444444 gui=none ctermfg=235 ctermbg=238
hi VertSplit    guifg=#444444 guibg=#444444 gui=none ctermfg=235 ctermbg=234
hi SignColumn   guifg=#444444 guibg=#444444 gui=none ctermfg=148 ctermbg=234
hi FoldColumn   guifg=#444444 guibg=#444444 gui=none ctermfg=148 ctermbg=234
hi Folded       guibg=#384048 guifg=#a0a8b0 gui=none ctermbg=236 ctermfg=246
hi Title        guifg=#f6f3e8 guibg=NONE    gui=bold ctermfg=254 cterm=bold
hi Visual       guifg=#faf4c6 guibg=#3c414c gui=none ctermfg=254 ctermbg=70
hi SpecialKey   guifg=#808080 guibg=#343434 gui=none ctermfg=236 ctermbg=234
hi TabLine      guifg=NONE    guibg=#343434 gui=none ctermfg=245 ctermbg=235 cterm=none
hi TabLineSel   guifg=NONE    guibg=#343434 gui=none ctermfg=253 ctermbg=234
hi TabLineFill  guifg=NONE    guibg=#343434 gui=none ctermfg=235 ctermbg=236
hi Directory    guifg=#b1d631 gui=none ctermfg=148
hi Search       guibg=#C5C08A guifg='black' ctermbg=185 ctermfg=234

" Syntax highlighting
hi Comment      guifg=#808080 gui=none ctermfg=245
hi Todo         guifg=#8f8f8f gui=none ctermfg=245
hi Boolean      guifg=#b1d631 gui=none ctermfg=148
hi String       guifg=#b1d631 gui=none ctermfg=148
hi Identifier   guifg=#b1d631 gui=none ctermfg=148
hi Function     guifg=#ffffff gui=bold ctermfg=255
hi Type         guifg=#7e8aa2 gui=none ctermfg=230
hi Statement    guifg=#7e8aa2 gui=none ctermfg=230
hi Keyword      guifg=#ff9800 gui=none ctermfg=208
hi Constant     guifg=#ff9800 gui=none  ctermfg=208
hi Number       guifg=#ff9800 gui=none ctermfg=208
hi Special      guifg=#ff9800 gui=none ctermfg=208
hi PreProc      guifg=#faf4c6 gui=none ctermfg=230
hi Todo         guifg=#000000 guibg=#e6ea50 gui=italic

" Diffs
hi DiffAdd ctermbg=148 ctermfg=234
hi DiffText ctermbg=148 ctermfg=234
hi DiffChange ctermbg=240
hi DiffDelete ctermbg=167

" Code-specific colors
hi pythonOperator guifg=#7e8aa2 gui=none ctermfg=230
hi markdownH1      ctermfg=230  cterm=bold
hi markdownH2      ctermfg=230  cterm=bold
hi markdownHeadingDelimiter ctermfg=185 cterm=bold


"set background=dark"
