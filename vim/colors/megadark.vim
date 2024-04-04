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

let g:colors_name = 'megadark'

hi Normal ctermbg=232 ctermfg=239 cterm=none
hi Type ctermfg=239
hi Statement ctermfg=239
hi Constant ctermfg=239
hi Identifier ctermfg=239 cterm=none
hi PreProc ctermfg=239
hi Constant ctermfg=239
hi Keyword ctermfg=239
hi Special ctermfg=239

hi Comment ctermfg=239

hi NonText ctermfg=238
hi SpecialKey ctermfg=238

hi ColorColumn ctermbg=233 ctermfg=none cterm=none
hi CursorColumn ctermbg=233 ctermfg=none cterm=none
hi CursorLine ctermbg=233 ctermfg=none cterm=none
hi CursorLineNr ctermfg=246 ctermbg=none cterm=none

hi LineNr ctermfg=238
hi SignColumn ctermbg=232

hi Folded ctermbg=233 ctermfg=238

hi TabLineFill ctermfg=235
hi TabLineSel ctermbg=236 cterm=none
hi TabLine ctermfg=238 ctermbg=235 cterm=none

hi StatusLine ctermbg=233 ctermfg=239 cterm=none
hi StatusLineNC ctermbg=233 ctermfg=239 cterm=none
hi VertSplit ctermbg=233 ctermfg=238 cterm=none

hi Pmenu ctermbg=232 ctermfg=238
hi PmenuSel ctermbg=238 ctermfg=232

hi Search cterm=none ctermbg=239 ctermfg=233
hi IncSearch ctermbg=239 ctermfg=233 cterm=none

hi SpellBad ctermbg=none ctermfg=202 cterm=none
hi TODO ctermbg=none ctermfg=none

hi MatchParen ctermbg=239 ctermfg=fg cterm=none

hi Title ctermfg=none

hi ALEError ctermbg=238 ctermfg=235
hi ALEErrorLine ctermbg=none ctermfg=none
hi ALEErrorSign ctermbg=238 ctermfg=235
hi ALEErrorSignLineNr ctermbg=238 ctermfg=235
hi ALEInfo ctermbg=238 ctermfg=235
hi ALEInfoLine ctermbg=none ctermfg=none
hi ALEInfoSign ctermbg=238 ctermfg=235
hi ALEInfoSignLineNr ctermbg=238 ctermfg=235
hi ALEStyleError ctermbg=238 ctermfg=235
hi ALEStyleErrorLine ctermbg=none ctermfg=none
hi ALEStyleErrorSign ctermbg=238 ctermfg=235
hi ALEStyleErrorSignLineNr ctermbg=238 ctermfg=235
hi ALEStyleWarning ctermbg=238 ctermfg=235
hi ALEStyleWarningLine ctermbg=none ctermfg=none
hi ALEStyleWarningSign ctermbg=238 ctermfg=235
hi ALEStyleWarningSignLineNr ctermbg=238 ctermfg=235
hi ALEWarning ctermbg=238 ctermfg=235
hi ALEWarningLine ctermbg=none ctermfg=none
hi ALEWarningSign ctermbg=238 ctermfg=235
hi ALEWarningSignLineNr ctermbg=238 ctermfg=235

hi Terminal ctermbg=233 ctermfg=239 cterm=none

hi MarkdownLinkText ctermfg=none
