" Based on blue.vim

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "deepblue"

hi Normal		guifg=yellow	guibg=darkBlue	ctermfg=222	ctermbg=18
hi NonText		guifg=magenta	ctermfg=238
hi SpecialKey	guifg=magenta	ctermfg=21
hi comment		guifg=gray		ctermfg=242	ctermbg=none	gui=bold
hi constant		guifg=cyan		ctermfg=143
hi identifier	guifg=gray		ctermfg=202
hi statement	guifg=white		ctermfg=white	ctermbg=none	gui=none
hi preproc		guifg=green		ctermfg=119
hi type			guifg=orange	ctermfg=135	ctermbg=none
hi Special		guifg=magenta	ctermfg=lightMagenta	ctermbg=none
hi Underlined	guifg=cyan		ctermfg=cyan	gui=underline	cterm=underline
hi label		guifg=yellow	ctermfg=yellow
hi operator		guifg=orange	gui=bold	ctermfg=lightRed	ctermbg=none

hi ErrorMsg		guifg=orange	guibg=darkBlue	ctermfg=lightRed
hi WarningMsg	guifg=cyan		guibg=darkBlue	ctermfg=cyan	gui=bold
hi ModeMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi MoreMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi Error		guifg=red		guibg=darkBlue	gui=underline	ctermfg=red

hi Todo			guifg=black		guibg=orange	ctermfg=173	ctermbg=none cterm=none
hi Cursor		guifg=black		guibg=white		ctermfg=black	ctermbg=white
hi Search		guifg=black		guibg=orange	ctermfg=4	ctermbg=222
hi IncSearch	guifg=black		guibg=yellow	ctermfg=black	ctermbg=darkYellow
hi LineNr		guifg=cyan		ctermfg=138 ctermbg=none
hi title		guifg=white	gui=bold	cterm=bold ctermfg=111

hi ColorColumn ctermfg=none ctermbg=17
hi CursorLine cterm=none ctermfg=none ctermbg=17
hi CursorLineNr ctermfg=216 ctermbg=17
hi SignColumn ctermfg=166 ctermbg=none

hi StatusLineNC	gui=NONE	guifg=black guibg=blue	ctermfg=238  ctermbg=244
hi StatusLine	gui=bold	guifg=cyan	guibg=blue	ctermfg=238   ctermbg=222
hi VertSplit	gui=none	guifg=blue	guibg=blue	ctermfg=238	ctermbg=none

hi TabLineFill ctermfg=238
hi TabLine ctermbg=238 ctermfg=222  cterm=none
hi TabLineSel ctermfg=222

hi Visual		term=reverse		ctermfg=none	ctermbg=204	guifg=black		guibg=darkCyan

hi DiffChange	guibg=darkGreen		guifg=black	ctermbg=darkGreen	ctermfg=black
hi DiffText		guibg=olivedrab		guifg=black		ctermbg=lightGreen	ctermfg=black
hi DiffAdd		guibg=slateblue		guifg=black		ctermbg=blue		ctermfg=black
hi DiffDelete   guibg=coral			guifg=black	ctermbg=cyan		ctermfg=black

hi Folded		guibg=orange		guifg=black		ctermbg=none		ctermfg=209
hi FoldColumn	guibg=gray30		guifg=black	ctermbg=none		ctermfg=209
hi cIf0			guifg=gray			ctermfg=gray
