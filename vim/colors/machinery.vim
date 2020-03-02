if !has('gui_running') && &t_Co != 256 && &t_Co != 88
    echomsg ''
    echomsg 'err: please use GUI or a 256-color terminal or 88-color terminal'
    echomsg ''
    finish
endif

if &background ==# 'dark'
    set background=light
endif

hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'machinery'

hi Normal ctermbg=216 ctermfg=237 cterm=none
hi Type ctermfg=237
hi Statement ctermfg=237
hi Constant ctermfg=237
hi Identifier ctermfg=243 cterm=none
hi PreProc ctermfg=242
hi Keyword ctermfg=237

hi Comment ctermfg=131
hi Title ctermfg=131

hi NonText ctermfg=242
hi SpecialKey ctermfg=242
hi Special ctermfg=241

hi ColorColumn ctermbg=173 ctermfg=none cterm=none
hi CursorColumn ctermbg=215 ctermfg=none cterm=none
hi CursorLine ctermbg=215 ctermfg=none cterm=none
hi CursorLineNr ctermfg=237 ctermbg=215 cterm=none

hi Visual ctermbg=185

hi LineNr ctermfg=242
hi SignColumn ctermbg=none ctermfg=237

hi Folded ctermbg=180 ctermfg=237

hi TabLineFill ctermfg=241
hi TabLineSel ctermbg=241 cterm=bold ctermfg=221
hi TabLine ctermfg=180 ctermbg=241 cterm=none

hi StatusLine ctermbg=241 ctermfg=221 cterm=none
hi StatusLineNC ctermbg=241 ctermfg=180 cterm=none
hi VertSplit ctermbg=241 ctermfg=221 cterm=none

hi Pmenu ctermbg=244

hi Search ctermbg=209
hi IncSearch ctermbg=202 cterm=none

hi SpellBad ctermbg=none ctermfg=202 cterm=none
hi TODO ctermbg=none ctermfg=229

