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

" nil with dark bg
let g:colors_name = 'peterburg'

hi Normal ctermbg=234 ctermfg=49 cterm=none
hi Type ctermfg=47
hi Statement ctermfg=41
hi Constant ctermfg=47
hi Identifier ctermfg=227 cterm=none
hi PreProc ctermfg=229
hi Constant ctermfg=48
hi Keyword ctermfg=41
hi Special ctermfg=114

hi Comment ctermfg=110

hi NonText ctermfg=242
hi SpecialKey ctermfg=242

hi ColorColumn ctermbg=237 ctermfg=none cterm=none
hi CursorColumn ctermbg=237 ctermfg=none cterm=none
hi CursorLine ctermbg=237 ctermfg=none cterm=none
hi CursorLineNr ctermfg=249 ctermbg=237 cterm=none

hi LineNr ctermfg=242
hi SignColumn ctermbg=235

hi Folded ctermbg=237 ctermfg=66

hi TabLineFill ctermfg=235
hi TabLineSel ctermbg=236 cterm=none
hi TabLine ctermfg=242 ctermbg=235 cterm=none

hi StatusLine ctermbg=237 ctermfg=251 cterm=none
hi StatusLineNC ctermbg=235 ctermfg=244 cterm=none
hi VertSplit ctermbg=235 ctermfg=242 cterm=none

hi Pmenu ctermbg=244

hi Search ctermbg=228
hi IncSearch ctermbg=228 cterm=none

hi SpellBad ctermbg=none ctermfg=202 cterm=none
hi TODO ctermbg=none ctermfg=229
