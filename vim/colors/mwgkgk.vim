hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "mwgkgk"

" Unfinished

hi Normal       ctermbg=236 ctermfg=222

" MAIN COLOR: 189/183
" 145, 139, 103, 61, 243 also ok:
hi Comment      ctermfg=103
hi Constant     ctermfg=150
hi Identifier   cterm=none ctermfg=231
hi Ignore                      ctermfg=black
hi PreProc      term=underline ctermfg=176
hi Search       cterm=none ctermbg=121
hi Special      cterm=none      ctermfg=136
hi Statement    cterm=none      ctermfg=187
hi Type                        ctermfg=195
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
hi Title        cterm=bold      ctermfg=193
hi WarningMsg   term=standout  ctermfg=LightRed
hi Visual       term=reverse   cterm=reverse

hi CursorColumn    ctermbg=239    cterm=none
hi CursorLine      ctermbg=238    cterm=none
hi CursorLineNr    ctermbg=240    cterm=none ctermfg=233

hi Folded          ctermfg=244    ctermbg=bg
hi FoldColumn      ctermfg=79     ctermbg=238
hi SignColumn      ctermfg=79     ctermbg=238
hi ColorColumn     ctermfg=79     ctermbg=237

hi Pmenu           ctermfg=fg     ctermbg=237
hi PmenuSel        ctermfg=231    ctermbg=244
hi PmenuSbar       ctermfg=231    ctermbg=244
hi WildMenu        ctermfg=71     ctermbg=237    cterm=none

hi TabLine cterm=none ctermbg=235 ctermfg=240
hi TabLineFill ctermfg=237

hi VertSplit  ctermfg=233 ctermbg=237 cterm=none
hi StatusLine   cterm=reverse ctermfg=237 ctermbg=183
hi StatusLineNC ctermfg=237 ctermbg=245

" yellow
hi Constant        ctermfg=186
hi String          ctermfg=117
hi Character       ctermfg=187
hi Number          ctermfg=111
hi Boolean         ctermfg=187
hi Float           ctermfg=111

