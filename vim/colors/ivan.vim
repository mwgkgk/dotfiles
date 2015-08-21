" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ivan"

hi Normal		ctermfg=254	ctermbg=238

hi ColorColumn ctermbg=240
hi CursorColumn ctermbg=240
hi CursorLine ctermbg=240 cterm=none ctermfg=none
hi CursorLineNR ctermbg=240 cterm=none ctermfg=none

hi NonText		ctermfg=235
hi SpecialKey	ctermfg=236
hi comment		ctermfg=gray
hi constant		ctermfg=216
hi identifier	ctermfg=148
hi statement	ctermfg=254
hi preproc		ctermfg=110
hi type			ctermfg=lightRed
hi special		ctermfg=lightMagenta
hi Underlined	ctermfg=216
hi label		ctermfg=yellow
hi operator		ctermfg=lightRed

hi ErrorMsg		ctermfg=lightRed
hi WarningMsg	ctermfg=216
hi ModeMsg		ctermfg=yellow
hi MoreMsg		ctermfg=yellow
hi Error		ctermfg=red

hi Todo			ctermfg=black	ctermbg=194
hi Cursor		ctermfg=black	ctermbg=254
hi Search		ctermfg=black	ctermbg=49
hi IncSearch	ctermfg=49	ctermbg=black
hi LineNr		ctermfg=216 ctermbg=239
hi title		cterm=bold

hi StatusLineNC	ctermfg=237  ctermbg=240
hi StatusLine	ctermfg=240   ctermbg=216
hi VertSplit	ctermfg=237	  ctermbg=238

hi Visual		term=reverse		ctermfg=black	ctermbg=darkCyan

hi DiffAdd ctermbg=148 ctermfg=234
hi DiffText ctermbg=148 ctermfg=234
hi DiffChange ctermbg=240
hi DiffDelete ctermbg=167

hi Pmenu ctermfg=216 ctermbg=240
hi PmenuSel ctermfg=240 ctermbg=216

hi TabLine      guifg=NONE    guibg=#343434 gui=none ctermfg=gray ctermbg=239 cterm=none
hi TabLineSel   guifg=NONE    guibg=#343434 gui=none ctermfg=253 ctermbg=238
hi TabLineFill  guifg=NONE    guibg=#343434 gui=none ctermfg=237 ctermbg=236

hi Folded		ctermbg=240		ctermfg=250
hi FoldColumn	ctermbg=gray		ctermfg=black
hi cIf0			ctermfg=gray

hi markdownHeadingDelimiter ctermfg=185 cterm=bold
