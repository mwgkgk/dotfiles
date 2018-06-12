hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "haze"

hi Normal       ctermbg=55  ctermfg=222

" MAIN COLOR: 222 -- 189/183
" 145, 139, 103, 61, 243 also ok:
hi Comment      ctermfg=103
hi Constant     ctermfg=150
hi Identifier   cterm=bold ctermfg=141
hi Ignore                      ctermfg=black
hi PreProc      term=underline ctermfg=230
hi Search       cterm=none ctermbg=180
hi Special      cterm=none      ctermfg=180
hi Statement    cterm=none      ctermfg=225
hi Type                        ctermfg=189
hi Error        term=reverse   ctermbg=Red    ctermfg=White
hi Todo         term=standout  ctermbg=Yellow ctermfg=Black

hi Directory    term=bold      ctermfg=LightCyan
hi ErrorMsg     term=standout  ctermbg=DarkRed    ctermfg=White
hi IncSearch    term=reverse   cterm=reverse
hi LineNr       term=underline ctermfg=240 ctermbg=235
hi ModeMsg      term=bold      cterm=bold
hi MoreMsg      term=bold      ctermfg=LightGreen
hi NonText      term=bold      ctermfg=238
hi Question     term=standout  ctermfg=LightGreen
hi SpecialKey   term=bold      ctermfg=LightBlue
hi Title        cterm=bold      ctermfg=214
hi WarningMsg   term=standout  ctermfg=LightRed
hi Visual       term=reverse   cterm=reverse

hi CursorColumn    ctermbg=93    cterm=none
hi CursorLine      ctermbg=93    cterm=none
hi CursorLineNr    ctermbg=55    cterm=bold ctermfg=16

hi Folded          ctermfg=213    ctermbg=bg
hi FoldColumn      ctermfg=213    ctermbg=238
hi SignColumn      ctermfg=79     ctermbg=238
hi ColorColumn     ctermfg=fg     ctermbg=235

hi Pmenu           ctermfg=fg     ctermbg=237
hi PmenuSel        ctermfg=231    ctermbg=244
hi PmenuSbar       ctermfg=231    ctermbg=244
hi WildMenu        ctermfg=71     ctermbg=237    cterm=none

hi TabLine cterm=none ctermbg=235 ctermfg=240
hi TabLineFill ctermfg=237

hi VertSplit  ctermfg=93 ctermbg=93 cterm=none
hi StatusLine   cterm=reverse ctermfg=93 ctermbg=216
hi StatusLineNC ctermfg=93 ctermbg=141

" yellow
hi Constant        ctermfg=186
hi String          ctermfg=153
hi Character       ctermfg=187
hi Number          ctermfg=111
hi Boolean         ctermfg=187
hi Float           ctermfg=111

