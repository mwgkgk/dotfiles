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

let g:colors_name = 'freeform'

hi Normal ctermbg=233 ctermfg=254 cterm=none
hi Type ctermfg=254
hi Statement ctermfg=254
hi Constant ctermfg=254
hi Identifier ctermfg=254 cterm=none
hi PreProc ctermfg=254
hi Constant ctermfg=254
hi Keyword ctermfg=254
hi Special ctermfg=254

hi Comment ctermfg=254

hi NonText ctermfg=238
hi SpecialKey ctermfg=238

hi ColorColumn ctermbg=235 ctermfg=none cterm=none
hi CursorColumn ctermbg=235 ctermfg=none cterm=none
hi CursorLine ctermbg=235 ctermfg=none cterm=none
hi CursorLineNr ctermfg=249 ctermbg=237 cterm=none

hi LineNr ctermfg=242
hi SignColumn ctermbg=235

hi Folded ctermbg=236 ctermfg=252

hi TabLineFill ctermfg=235
hi TabLineSel ctermbg=236 cterm=none
hi TabLine ctermfg=242 ctermbg=235 cterm=none

hi StatusLine ctermbg=235 ctermfg=251 cterm=none
hi StatusLineNC ctermbg=235 ctermfg=251 cterm=none
hi VertSplit ctermbg=235 ctermfg=242 cterm=none

hi Pmenu ctermbg=232 ctermfg=251
hi PmenuSel ctermbg=251 ctermfg=232

hi Search cterm=none ctermbg=254 ctermfg=233
hi IncSearch ctermbg=254 ctermfg=233 cterm=none

hi SpellBad ctermbg=none ctermfg=202 cterm=none
hi TODO ctermbg=none ctermfg=none

hi MatchParen ctermbg=239 ctermfg=fg cterm=none

hi Title ctermfg=none

hi ALEError ctermbg=242 ctermfg=235
hi ALEErrorLine ctermbg=none ctermfg=none
hi ALEErrorSign ctermbg=242 ctermfg=235
hi ALEErrorSignLineNr ctermbg=242 ctermfg=235
hi ALEInfo ctermbg=242 ctermfg=235
hi ALEInfoLine ctermbg=none ctermfg=none
hi ALEInfoSign ctermbg=242 ctermfg=235
hi ALEInfoSignLineNr ctermbg=242 ctermfg=235
hi ALEStyleError ctermbg=242 ctermfg=235
hi ALEStyleErrorLine ctermbg=none ctermfg=none
hi ALEStyleErrorSign ctermbg=242 ctermfg=235
hi ALEStyleErrorSignLineNr ctermbg=242 ctermfg=235
hi ALEStyleWarning ctermbg=242 ctermfg=235
hi ALEStyleWarningLine ctermbg=none ctermfg=none
hi ALEStyleWarningSign ctermbg=242 ctermfg=235
hi ALEStyleWarningSignLineNr ctermbg=242 ctermfg=235
hi ALEWarning ctermbg=242 ctermfg=235
hi ALEWarningLine ctermbg=none ctermfg=none
hi ALEWarningSign ctermbg=242 ctermfg=235
hi ALEWarningSignLineNr ctermbg=242 ctermfg=235
