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

hi NonText ctermfg=242
hi SpecialKey ctermfg=242

hi ColorColumn ctermbg=235 ctermfg=none cterm=none
hi CursorColumn ctermbg=235 ctermfg=none cterm=none
hi CursorLine ctermbg=235 ctermfg=none cterm=none
hi CursorLineNr ctermfg=249 ctermbg=237 cterm=none

hi LineNr ctermfg=242
hi SignColumn ctermbg=235

hi Folded ctermbg=237 ctermfg=66

hi TabLineFill ctermfg=235
hi TabLineSel ctermbg=236 cterm=none
hi TabLine ctermfg=242 ctermbg=235 cterm=none

hi StatusLine ctermbg=235 ctermfg=251 cterm=none
hi StatusLineNC ctermbg=235 ctermfg=244 cterm=none
hi VertSplit ctermbg=235 ctermfg=242 cterm=none

hi Pmenu ctermbg=244

hi Search ctermbg=228
hi IncSearch ctermbg=228 cterm=none

hi SpellBad ctermbg=none ctermfg=202 cterm=none
hi TODO ctermbg=none ctermfg=229
