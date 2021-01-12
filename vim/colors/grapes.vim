hi clear
set background=dark
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'grapes'

hi Normal       ctermbg=234  ctermfg=169

hi Comment      ctermfg=70
hi Constant     ctermfg=167
hi Identifier   cterm=none ctermfg=141
hi Ignore                      ctermfg=black
hi PreProc      term=underline ctermfg=96
hi Search       cterm=none ctermbg=180
hi Special      cterm=none      ctermfg=180
hi Statement    cterm=none      ctermfg=225
hi Type                        ctermfg=133
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
hi SpecialKey   term=bold      ctermfg=237
hi Title        cterm=bold      ctermfg=103
hi WarningMsg   term=standout  ctermfg=LightRed
hi Visual       term=reverse   cterm=reverse

hi CursorColumn    ctermbg=236    cterm=none
hi CursorLine      ctermbg=236    cterm=none
hi CursorLineNr    ctermbg=234    cterm=bold ctermfg=70

hi Folded          ctermfg=213    ctermbg=bg
hi FoldColumn      ctermfg=213    ctermbg=238
hi SignColumn      ctermfg=79     ctermbg=234
hi ColorColumn     ctermfg=fg     ctermbg=235

hi Pmenu           ctermfg=fg     ctermbg=237
hi PmenuSel        ctermfg=231    ctermbg=244
hi PmenuSbar       ctermfg=231    ctermbg=244
hi WildMenu        ctermfg=71     ctermbg=237    cterm=none

hi TabLine cterm=none ctermbg=235 ctermfg=240
hi TabLineFill ctermfg=237

hi VertSplit  ctermfg=236 ctermbg=236 cterm=none
hi StatusLine   cterm=reverse ctermfg=236 ctermbg=216
hi StatusLineNC ctermfg=236 ctermbg=141

" yellow
hi String          ctermfg=153
hi Character       ctermfg=187
hi Number          ctermfg=111
hi Boolean         ctermfg=187
hi Float           ctermfg=111
