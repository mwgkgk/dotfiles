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

let g:colors_name = 'grid'

hi Comment      ctermfg=30 ctermbg=none cterm=none
hi Constant     ctermfg=49 ctermbg=none cterm=none
hi Cursor       ctermfg=48 ctermbg=none cterm=bold,reverse
hi CursorColumn ctermfg=none ctermbg=235 cterm=none
hi CursorIM     ctermfg=208 ctermbg=none cterm=bold
hi CursorLine   ctermfg=none ctermbg=235 cterm=none
hi CursorLineNr ctermfg=none ctermbg=235 cterm=none
hi DiffAdd      ctermfg=234 ctermbg=120 cterm=none
hi DiffChange   ctermfg=none ctermbg=240 cterm=none
hi DiffDelete   ctermfg=234 ctermbg=124 cterm=none
hi DiffText     ctermfg=208 ctermbg=240 cterm=bold
hi Directory    ctermfg=86 ctermbg=none cterm=none
hi Error        ctermfg=13 ctermbg=none cterm=none
hi ErrorMsg     ctermfg=13 ctermbg=none cterm=none
hi FoldColumn   ctermfg=208 ctermbg=016 cterm=none
hi Folded       ctermfg=243 ctermbg=235 cterm=none
hi Conceal      ctermfg=243 ctermbg=235 cterm=none
hi Identifier   ctermfg=86 ctermbg=none cterm=none
hi IncSearch    cterm=reverse
hi LineNr       ctermfg=237 ctermbg=016 cterm=none
hi MatchParen   ctermfg=240 ctermbg=86 cterm=bold
hi ModeMsg      ctermfg=47 ctermbg=none cterm=none
hi MoreMsg      ctermfg=47 ctermbg=none cterm=bold
hi NonText      ctermfg=237 ctermbg=none cterm=none
hi Normal       ctermfg=83 ctermbg=234 cterm=none
hi Pmenu        ctermfg=47 ctermbg=none cterm=none
hi PmenuSbar    ctermfg=47 ctermbg=86 cterm=none
hi PmenuSel     ctermfg=48 ctermbg=86 cterm=none
hi PreProc      ctermfg=86 ctermbg=none cterm=none
hi Question     ctermfg=040 ctermbg=none cterm=none
hi Search       cterm=none ctermbg=221
hi Special      ctermfg=47 ctermbg=none cterm=none
hi SpecialKey   ctermfg=47 ctermbg=none cterm=bold
hi Statement    ctermfg=48 ctermbg=none cterm=none
hi StatusLine   ctermfg=83 ctermbg=236 cterm=none
hi StatusLineNC ctermfg=243 ctermbg=236 cterm=none
hi TabLine      ctermfg=238 ctermbg=none cterm=none
hi TabLineFill  ctermfg=000 ctermbg=none cterm=none
hi TabLineSel   ctermfg=242 ctermbg=none cterm=none
hi Title        ctermfg=48 ctermbg=none cterm=bold
hi Todo         ctermfg=000 ctermbg=47 cterm=none
hi Type         ctermfg=84 ctermbg=none cterm=none
hi Underlined   ctermfg=47 ctermbg=none cterm=underline
hi VertSplit    ctermfg=236 ctermbg=236 cterm=none
hi Visual       ctermbg=none cterm=reverse
hi VisualNOS    ctermbg=86 cterm=reverse
hi WarningMsg   ctermfg=48 ctermbg=none cterm=none
hi WildMenu     ctermfg=000 ctermbg=48 cterm=reverse
hi ColorColumn  ctermbg=235
hi SignColumn   ctermbg=234 ctermfg=83

hi Title ctermfg=43 cterm=bold

hi yamlKey cterm=bold
