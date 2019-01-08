hi clear
set background=dark
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'tactical'

hi Normal       ctermbg=233 ctermfg=107

hi Comment      ctermfg=94
hi Constant     ctermfg=150
hi Identifier   cterm=none ctermfg=107
hi Ignore                      ctermfg=black
hi PreProc      term=underline ctermfg=150
hi Search       cterm=none ctermbg=137
hi Special      cterm=none      ctermfg=65
hi Statement    cterm=none      ctermfg=242
hi Type                        ctermfg=143
hi Error        term=reverse   ctermbg=Red    ctermfg=White
hi Todo         term=standout  ctermbg=Yellow ctermfg=Black

hi Directory    term=bold      ctermfg=LightCyan
hi ErrorMsg     term=standout  ctermbg=DarkRed    ctermfg=White
hi IncSearch    term=reverse   cterm=reverse
hi LineNr       term=underline ctermfg=238 ctermbg=234
hi ModeMsg      term=bold      cterm=bold
hi MoreMsg      term=bold      ctermfg=LightGreen
hi NonText      term=bold      ctermfg=238
hi Question     term=standout  ctermfg=LightGreen
hi SpecialKey   term=bold      ctermfg=238
hi Title        cterm=bold      ctermfg=137
hi WarningMsg   term=standout  ctermfg=LightRed
hi Visual       term=reverse   cterm=reverse

hi CursorColumn    ctermbg=235    cterm=none
hi CursorLine      ctermbg=235    cterm=none
hi CursorLineNr    ctermbg=240    cterm=none ctermfg=233

hi Folded          ctermfg=244    ctermbg=bg
hi FoldColumn      ctermfg=79     ctermbg=233
hi SignColumn      ctermfg=79     ctermbg=233
hi ColorColumn     ctermfg=79     ctermbg=235

hi Pmenu           ctermfg=fg     ctermbg=235
hi PmenuSel        ctermfg=231    ctermbg=244
hi PmenuSbar       ctermfg=231    ctermbg=244
hi WildMenu        ctermfg=71     ctermbg=235    cterm=none

hi TabLine cterm=none ctermbg=235 ctermfg=240
hi TabLineFill ctermfg=235

hi VertSplit  ctermfg=233 ctermbg=235 cterm=none
hi StatusLine   cterm=reverse ctermfg=235 ctermbg=145
hi StatusLineNC ctermfg=235 ctermbg=245

hi Constant        ctermfg=245
hi String          ctermfg=192
hi Character       ctermfg=187
hi Number          ctermfg=137
hi Boolean         ctermfg=187
hi Float           ctermfg=111
