"=============================================================================
" jabeige.vim :
"=============================================================================
"
" Author:  Takeshi NISHIDA <ns9tks@DELETE-ME.gmail.com>
" Version: 0.1, for Vim 7.1
" Licence: MIT Licence
"
"=============================================================================

set background=light
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="jabeige"

"highlight              guifg=NONE    guibg=NONE    gui=NONE      ctermfg=NONE ctermbg=NONE cterm=NONE
" highlight  Normal       guifg=#181818 guibg=#d3bda3 gui=NONE     
highlight  Normal       guifg=#595050 guibg=#d3bda3 gui=NONE     
highlight  Cursor       guifg=bg      guibg=fg      gui=NONE     
highlight  CursorIM     guifg=bg      guibg=#ff0000 gui=NONE     
highlight  CursorColumn guifg=NONE    guibg=#f5f5dc gui=NONE     
highlight  CursorLine   guifg=NONE    guibg=#f5f5dc gui=NONE     
highlight  Directory    guifg=#0000ff guibg=NONE    gui=NONE     
"highlight DiffAdd      guifg=NONE    guibg=NONE    gui=NONE     
"highlight DiffChange   guifg=NONE    guibg=NONE    gui=NONE     
"highlight DiffDelete   guifg=NONE    guibg=NONE    gui=NONE     
"highlight DiffText     guifg=NONE    guibg=NONE    gui=NONE     
highlight  ErrorMsg     guifg=#ffffff guibg=#ff0000 gui=NONE     
highlight  VertSplit    guifg=bg      guibg=#544a47 gui=NONE     
"highlight Folded       guifg=NONE    guibg=NONE    gui=NONE     
"highlight FoldColumn   guifg=NONE    guibg=NONE    gui=NONE     
"highlight SignColumn   guifg=NONE    guibg=NONE    gui=NONE     
"highlight IncSearch    guifg=NONE    guibg=NONE    gui=NONE     
highlight  LineNr       guifg=#7b5544 guibg=#bba58b gui=NONE     
highlight  MatchParen   guifg=NONE    guibg=#f7fcfe gui=NONE     
highlight  ModeMsg      guifg=fg      guibg=NONE    gui=bold     
highlight  MoreMsg      guifg=#e50086 guibg=NONE    gui=bold     
highlight  NonText      guifg=#8f6552 guibg=NONE    gui=NONE     
highlight  Pmenu        guifg=fg      guibg=#bba58b gui=NONE     
highlight  PmenuSel     guifg=bg      guibg=#e50086 gui=NONE     
highlight  PmenuSbar    guifg=NONE    guibg=#bba58b gui=NONE     
highlight  PmenuThumb   guifg=NONE    guibg=#e50086 gui=NONE     
highlight  Question     guifg=#e50086 guibg=NONE    gui=bold     
highlight  Search       guifg=bg      guibg=#e50086 gui=NONE     
highlight  SpecialKey   guifg=#7b5544 guibg=NONE    gui=NONE     
"highlight SpellBad     guifg=NONE    guibg=NONE    gui=NONE     
"highlight SpellCap     guifg=NONE    guibg=NONE    gui=NONE     
"highlight SpellLocal   guifg=NONE    guibg=NONE    gui=NONE     
"highlight SpellRare    guifg=NONE    guibg=NONE    gui=NONE     
highlight  StatusLine   guifg=bg      guibg=#7a1e2a gui=NONE     
highlight  StatusLineNC guifg=bg      guibg=#544a47 gui=NONE     
highlight  TabLine      guifg=bg      guibg=#544a47 gui=NONE     
highlight  TabLineFill  guifg=fg      guibg=#bba58b gui=NONE     
highlight  TabLineSel   guifg=bg      guibg=#7a1e2a gui=NONE     
highlight  Title        guifg=#000000 guibg=bg      gui=bold     
highlight  Visual       guifg=bg      guibg=#7a1e2a gui=NONE     
highlight  VisualNOS    guifg=bg      guibg=fg      gui=underline
highlight  WarningMsg   guifg=#ff0000 guibg=NONE    gui=NONE     
highlight  WildMenu     guifg=bg      guibg=fg      gui=NONE     

highlight  Comment      guifg=#a22041 guibg=NONE    gui=NONE     
highlight  Constant     guifg=#65318e guibg=NONE    gui=NONE     

highlight  Identifier   guifg=#ffffff guibg=NONE    gui=NONE     
highlight  Statement    guifg=#164a84 guibg=NONE    gui=NONE     
highlight  PreProc      guifg=#ea5506 guibg=NONE    gui=NONE     
highlight  Type         guifg=#00552e guibg=NONE    gui=NONE     
highlight  Special      guifg=#c400cc guibg=NONE    gui=NONE     
highlight  Underlined   guifg=#0000ff guibg=NONE    gui=underline
highlight  Ignore       guifg=bg      guibg=NONE    gui=NONE     
highlight  Error        guifg=#ff0000 guibg=NONE    gui=NONE     
highlight  Todo         guifg=#ffffff guibg=NONE    gui=Underline

