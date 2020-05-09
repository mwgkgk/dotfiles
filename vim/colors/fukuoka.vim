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

let g:colors_name = 'fukuoka'

hi Normal ctermbg=96 ctermfg=255 cterm=none
hi Type ctermfg=216
hi Statement ctermfg=216
hi Constant ctermfg=216
hi Identifier ctermfg=231 cterm=none
hi PreProc ctermfg=210
hi Keyword ctermfg=186

hi Comment ctermfg=222

hi NonText ctermfg=242
hi SpecialKey ctermfg=242

hi ColorColumn ctermbg=132 ctermfg=none cterm=none
hi CursorColumn ctermbg=132 ctermfg=none cterm=none
hi CursorLine ctermbg=132 ctermfg=none cterm=none
hi CursorLineNr ctermfg=249 ctermbg=132 cterm=none

hi LineNr ctermfg=182
hi SignColumn ctermbg=132

hi Folded ctermbg=132 ctermfg=250

hi TabLineFill ctermfg=132
hi TabLineSel ctermbg=96 cterm=bold ctermfg=221
hi TabLine ctermfg=254 ctermbg=132 cterm=none

hi StatusLine ctermbg=132 ctermfg=221 cterm=bold
hi StatusLineNC ctermbg=132 ctermfg=255 cterm=none
hi VertSplit ctermbg=132 ctermfg=242 cterm=none

hi Pmenu ctermbg=244

hi Search ctermbg=228
hi IncSearch ctermbg=228 cterm=none

hi Visual ctermbg=111 ctermfg=239

hi SpellBad ctermbg=none ctermfg=202 cterm=none
hi TODO ctermbg=none ctermfg=229

hi Error ctermbg=167 ctermfg=none

hi DiffChange ctermbg=65
hi DiffAdd ctermbg=71
hi DiffText ctermbg=71
hi DiffDelete ctermbg=59
