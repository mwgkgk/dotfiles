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

let g:colors_name = 'salmon'

hi Normal ctermbg=232 ctermfg=210 cterm=none
hi Type ctermfg=210
hi Statement ctermfg=210
hi Constant ctermfg=210
hi Identifier ctermfg=210 cterm=none
hi PreProc ctermfg=210
hi Constant ctermfg=210
hi Keyword ctermfg=210
hi Special ctermfg=210

hi Comment ctermfg=210

hi NonText ctermfg=238
hi SpecialKey ctermfg=238

hi ColorColumn ctermbg=233 ctermfg=none cterm=none
hi CursorColumn ctermbg=233 ctermfg=none cterm=none
hi CursorLine ctermbg=233 ctermfg=none cterm=none
hi CursorLineNr ctermfg=246 ctermbg=none cterm=none

hi LineNr ctermfg=95
hi SignColumn ctermbg=232

hi Folded ctermbg=233 ctermfg=95

hi TabLineFill ctermfg=235
hi TabLineSel ctermbg=236 cterm=none
hi TabLine ctermfg=95 ctermbg=235 cterm=none

hi StatusLine ctermbg=233 ctermfg=210 cterm=none
hi StatusLineNC ctermbg=233 ctermfg=210 cterm=none
hi VertSplit ctermbg=233 ctermfg=95 cterm=none

hi Pmenu ctermbg=232 ctermfg=95
hi PmenuSel ctermbg=95 ctermfg=232

hi Search cterm=none ctermbg=210 ctermfg=233
hi IncSearch ctermbg=210 ctermfg=233 cterm=none

hi SpellBad ctermbg=none ctermfg=202 cterm=none
hi TODO ctermbg=none ctermfg=none

hi MatchParen ctermbg=239 ctermfg=fg cterm=none

hi Title ctermfg=none

hi ALEError ctermbg=95 ctermfg=235
hi ALEErrorLine ctermbg=none ctermfg=none
hi ALEErrorSign ctermbg=95 ctermfg=235
hi ALEErrorSignLineNr ctermbg=95 ctermfg=235
hi ALEInfo ctermbg=95 ctermfg=235
hi ALEInfoLine ctermbg=none ctermfg=none
hi ALEInfoSign ctermbg=95 ctermfg=235
hi ALEInfoSignLineNr ctermbg=95 ctermfg=235
hi ALEStyleError ctermbg=95 ctermfg=235
hi ALEStyleErrorLine ctermbg=none ctermfg=none
hi ALEStyleErrorSign ctermbg=95 ctermfg=235
hi ALEStyleErrorSignLineNr ctermbg=95 ctermfg=235
hi ALEStyleWarning ctermbg=95 ctermfg=235
hi ALEStyleWarningLine ctermbg=none ctermfg=none
hi ALEStyleWarningSign ctermbg=95 ctermfg=235
hi ALEStyleWarningSignLineNr ctermbg=95 ctermfg=235
hi ALEWarning ctermbg=95 ctermfg=235
hi ALEWarningLine ctermbg=none ctermfg=none
hi ALEWarningSign ctermbg=95 ctermfg=235
hi ALEWarningSignLineNr ctermbg=95 ctermfg=235

hi Terminal ctermbg=233 ctermfg=210 cterm=none

hi MarkdownLinkText ctermfg=none
