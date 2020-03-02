if !has("gui_running") && &t_Co != 256 && &t_Co != 88
    echomsg ""
    echomsg "err: please use GUI or a 256-color terminal or 88-color terminal"
    echomsg ""
    finish
endif

if &background == "dark"
    set background=light
endif

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'machinery'

hi Normal ctermbg=216 ctermfg=237 cterm=none
hi Type ctermfg=237
hi Statement ctermfg=237
hi Constant ctermfg=237
hi Identifier ctermfg=243 cterm=none
hi PreProc ctermfg=242
hi Keyword ctermfg=102

hi Comment ctermfg=131

hi NonText ctermfg=242
hi SpecialKey ctermfg=242
hi Special ctermfg=241

hi ColorColumn ctermbg=173 ctermfg=none cterm=none
hi CursorColumn ctermbg=222 ctermfg=none cterm=none
hi CursorLine ctermbg=222 ctermfg=none cterm=none
hi CursorLineNr ctermfg=249 ctermbg=222 cterm=none

hi Visual ctermbg=181

hi LineNr ctermfg=242
hi SignColumn ctermbg=none ctermfg=237

hi Folded ctermbg=180 ctermfg=237

hi TabLineFill ctermfg=235
hi TabLineSel ctermbg=236 cterm=none
hi TabLine ctermfg=242 ctermbg=235 cterm=none

hi StatusLine ctermbg=241 ctermfg=227 cterm=none
hi StatusLineNC ctermbg=241 ctermfg=180 cterm=none
hi VertSplit ctermbg=241 ctermfg=221 cterm=none

hi Pmenu ctermbg=244

hi Search ctermbg=221
hi IncSearch ctermbg=228 cterm=none

hi SpellBad ctermbg=none ctermfg=202 cterm=none
hi TODO ctermbg=none ctermfg=229

