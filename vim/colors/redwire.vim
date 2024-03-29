hi clear
set background=dark
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'redwire'

hi Normal       ctermbg=235  ctermfg=214
hi Comment      ctermfg=130
hi Constant     cterm=bold   ctermfg=214
hi Identifier   ctermfg=214
hi Ignore                      ctermfg=black
hi PreProc      term=underline ctermfg=LightBlue
hi Search       cterm=reverse
hi Special      cterm=none      ctermfg=196
hi Statement    cterm=none      ctermfg=196
hi Type         cterm=bold     ctermfg=160
hi Error        term=reverse   ctermbg=Red    ctermfg=White
hi Todo         term=standout  ctermbg=Yellow ctermfg=Black
hi PreProc      cterm=none     ctermfg=220
hi Directory    term=bold      ctermfg=LightCyan
hi ErrorMsg     term=standout  ctermbg=DarkRed    ctermfg=White
hi IncSearch    term=reverse   cterm=reverse
hi LineNr       term=underline ctermfg=240 ctermbg=235
hi ModeMsg      term=bold      cterm=bold
hi MoreMsg      term=bold      ctermfg=LightGreen
hi NonText      term=bold      ctermfg=238
hi Question     term=standout  ctermfg=LightGreen
hi SpecialKey   term=bold      ctermfg=LightBlue
hi Title        cterm=bold      ctermfg=196
hi WarningMsg   term=standout  ctermfg=LightRed
hi Visual       term=reverse   cterm=reverse

hi CursorColumn    ctermbg=237    cterm=none
hi CursorLine      ctermbg=237    cterm=none
hi CursorLineNr    ctermbg=237    cterm=bold ctermfg=118

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

hi VertSplit  ctermfg=237 ctermbg=237 cterm=none
hi StatusLine   term=bold ctermfg=237 ctermbg=fg
hi StatusLineNC ctermfg=237 ctermbg=243

hi String          ctermfg=202
hi Character       ctermfg=197
hi Number          ctermfg=131
hi Boolean         ctermfg=197
hi Float           ctermfg=131

hi Todo ctermfg=220 ctermbg=none
