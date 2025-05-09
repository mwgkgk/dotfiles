if !has('gui_running') && &t_Co != 256 && &t_Co != 88
    echomsg ''
    echomsg 'err: please use GUI or a 256-color terminal or 88-color terminal'
    echomsg ''
    finish
endif

if &background ==# 'light'
    set background=dark
endif

hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'gigadark'

hi Normal ctermbg=232 ctermfg=236 cterm=none
hi Type ctermfg=236
hi Statement ctermfg=236
hi Constant ctermfg=236
hi Identifier ctermfg=236 cterm=none
hi PreProc ctermfg=236
hi Constant ctermfg=236
hi Keyword ctermfg=236
hi Special ctermfg=236

hi Comment ctermfg=236

hi NonText ctermfg=236
hi SpecialKey ctermfg=236

hi ColorColumn ctermbg=233 ctermfg=none cterm=none
hi CursorColumn ctermbg=233 ctermfg=none cterm=none
hi CursorLine ctermbg=233 ctermfg=none cterm=none
hi CursorLineNr ctermfg=240 ctermbg=none cterm=none

hi LineNr ctermfg=236
hi SignColumn ctermbg=232

hi Folded ctermbg=233 ctermfg=236

hi TabLineFill ctermfg=235
hi TabLineSel ctermbg=236 cterm=none
hi TabLine ctermfg=236 ctermbg=235 cterm=none

hi StatusLine ctermbg=233 ctermfg=236 cterm=none
hi StatusLineNC ctermbg=233 ctermfg=236 cterm=none
hi VertSplit ctermbg=233 ctermfg=236 cterm=none

hi Pmenu ctermbg=232 ctermfg=236
hi PmenuSel ctermbg=236 ctermfg=232

hi Search cterm=none ctermbg=236 ctermfg=233
hi IncSearch ctermbg=236 ctermfg=233 cterm=none

hi SpellBad ctermbg=none ctermfg=202 cterm=none
hi TODO ctermbg=none ctermfg=none

hi MatchParen ctermbg=236 ctermfg=fg cterm=none

hi Title ctermfg=none

hi ALEError ctermbg=236 ctermfg=235
hi ALEErrorLine ctermbg=none ctermfg=none
hi ALEErrorSign ctermbg=236 ctermfg=235
hi ALEErrorSignLineNr ctermbg=236 ctermfg=235
hi ALEInfo ctermbg=236 ctermfg=235
hi ALEInfoLine ctermbg=none ctermfg=none
hi ALEInfoSign ctermbg=236 ctermfg=235
hi ALEInfoSignLineNr ctermbg=236 ctermfg=235
hi ALEStyleError ctermbg=236 ctermfg=235
hi ALEStyleErrorLine ctermbg=none ctermfg=none
hi ALEStyleErrorSign ctermbg=236 ctermfg=235
hi ALEStyleErrorSignLineNr ctermbg=236 ctermfg=235
hi ALEStyleWarning ctermbg=236 ctermfg=235
hi ALEStyleWarningLine ctermbg=none ctermfg=none
hi ALEStyleWarningSign ctermbg=236 ctermfg=235
hi ALEStyleWarningSignLineNr ctermbg=236 ctermfg=235
hi ALEWarning ctermbg=236 ctermfg=235
hi ALEWarningLine ctermbg=none ctermfg=none
hi ALEWarningSign ctermbg=236 ctermfg=235
hi ALEWarningSignLineNr ctermbg=236 ctermfg=235

hi Terminal ctermbg=233 ctermfg=236 cterm=none

hi MarkdownLinkText ctermfg=none
