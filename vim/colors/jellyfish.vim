hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "jellyfish"

" 86, ~80
hi Normal       ctermbg=234  ctermfg=80

" 145, 139, 103, 61, 243 also ok:
hi Comment      ctermfg=140
hi Constant     ctermfg=150
hi Identifier   cterm=none ctermfg=81
hi Ignore                      ctermfg=black
hi PreProc      term=underline ctermfg=LightBlue
hi Search       cterm=none ctermfg=234 ctermbg=202
hi IncSearch    cterm=none ctermfg=234 ctermbg=208
hi Special      cterm=none      ctermfg=69

" 167, 
hi Statement    cterm=none      ctermfg=168
hi Type                        ctermfg=159
hi Error        term=reverse   ctermbg=Red    ctermfg=White
hi Todo         term=standout  ctermbg=Yellow ctermfg=Black

hi Directory    term=bold      ctermfg=LightCyan
hi ErrorMsg     term=standout  ctermbg=DarkRed    ctermfg=White
hi LineNr       term=underline ctermfg=240 ctermbg=235
hi ModeMsg      term=bold      cterm=bold
hi MoreMsg      term=bold      ctermfg=LightGreen
hi NonText      term=bold      ctermfg=238
hi Question     term=standout  ctermfg=LightGreen
hi SpecialKey   term=bold      ctermfg=LightBlue

" 167, 
hi Title        cterm=bold      ctermfg=168

hi WarningMsg   term=standout  ctermfg=LightRed
hi Visual       term=reverse   cterm=reverse

hi CursorColumn    ctermbg=237    cterm=none
hi CursorLine      ctermbg=237    cterm=none
hi CursorLineNr    ctermbg=237    cterm=none ctermfg=248

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
hi StatusLine   cterm=reverse ctermfg=237 ctermbg=248
hi StatusLineNC ctermfg=237 ctermbg=243

" yellow
hi Constant        ctermfg=135
hi String          ctermfg=182
hi Character       ctermfg=187
hi Number          ctermfg=179
hi Boolean         ctermfg=187
hi Float           ctermfg=179

