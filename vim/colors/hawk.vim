if !has("gui_running") && &t_Co != 256 && &t_Co != 88
    echomsg ""
    echomsg "err: please use GUI or a 256-color terminal or 88-color terminal"
    echomsg ""
    finish
endif

if &background == "light"
    set background=dark
endif

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'hawk'

hi Comment      guifg=#008220 guibg=#000000 gui=none ctermfg=59 ctermbg=none cterm=none
hi Constant     guifg=#1fc700 guibg=#001c00 gui=none ctermfg=157 ctermbg=none cterm=none
hi Cursor       guifg=#00ff00 gui=bold,reverse ctermfg=108 ctermbg=none cterm=bold,reverse
hi CursorColumn guifg=#000000 guibg=#00cc00 gui=none ctermfg=none ctermbg=235 cterm=none
hi CursorIM     guifg=#00ff00 guibg=#000000 gui=bold ctermfg=208 ctermbg=none cterm=bold
hi CursorLine   guifg=#000000 guibg=#00cc00 gui=none ctermfg=none ctermbg=235 cterm=none
hi CursorLineNr guifg=#000000 guibg=#00cc00 gui=none ctermfg=none ctermbg=235 cterm=none
hi DiffAdd      guifg=#00bf00 guibg=#002200 gui=none ctermfg=234 ctermbg=120 cterm=none
hi DiffChange   guifg=#00a900 guibg=#002200 gui=none ctermfg=none ctermbg=240 cterm=none
hi DiffDelete   guifg=#000000 guibg=#005500 gui=none ctermfg=234 ctermbg=124 cterm=none
hi DiffText     guifg=#00aa00 guibg=#004400 gui=underline ctermfg=208 ctermbg=240 cterm=bold
hi Directory    guifg=#009330 guibg=#000000 gui=none ctermfg=192 ctermbg=none cterm=none
hi Error        guifg=#000000 guibg=#00d000 gui=none ctermfg=202 ctermbg=none cterm=none
hi ErrorMsg     guifg=#000000 guibg=#00ff00 gui=bold ctermfg=202 ctermbg=none cterm=none
hi FoldColumn   guifg=#00b900 guibg=#000300 gui=none ctermfg=208 ctermbg=016 cterm=none
hi Folded       guifg=#00bf00 guibg=#001200 gui=none ctermfg=243 ctermbg=235 cterm=none
hi Conceal      guifg=#00bf00 guibg=#001200 gui=none ctermfg=243 ctermbg=235 cterm=none
hi Identifier   guifg=#50d930 guibg=#000000 gui=none ctermfg=151 ctermbg=none cterm=none
hi IncSearch    gui=reverse cterm=reverse
hi LineNr       guifg=#007900 guibg=#000600 gui=none ctermfg=242 ctermbg=233 cterm=none
hi MatchParen   guifg=#304300 guibg=#00fe00 gui=none ctermfg=108 ctermbg=192 cterm=bold
hi ModeMsg      guifg=#00ea00 guibg=#000900 gui=none ctermfg=101 ctermbg=none cterm=none
hi MoreMsg      guifg=#00e700 guibg=#001000 gui=bold ctermfg=101 ctermbg=none cterm=bold
hi NonText      guifg=#008700 guibg=#001000 gui=none ctermfg=237 ctermbg=none cterm=none
hi Normal       guifg=#00a900 guibg=#000000 gui=none ctermfg=194 ctermbg=233 cterm=none
hi Pmenu        guifg=#00bf00 guibg=#000a00 gui=none ctermfg=101 ctermbg=none cterm=none
hi PmenuSbar    guifg=#00dc00 guibg=#001c00 gui=none ctermfg=101 ctermbg=192 cterm=none
hi PmenuSel     guifg=#00f300 guibg=#002200 gui=none ctermfg=108 ctermbg=192 cterm=none
hi PreProc      guifg=#00ac5c guibg=#000000 gui=none ctermfg=192 ctermbg=none cterm=none
hi Question     guifg=#009f00 guibg=#000000 gui=none ctermfg=040 ctermbg=none cterm=none
hi Search       gui=reverse cterm=none ctermbg=221
hi Special      guifg=#00d700 guibg=#001200 gui=none ctermfg=101 ctermbg=none cterm=none
hi SpecialKey   guifg=#008000 guibg=#002300 gui=bold ctermfg=101 ctermbg=none cterm=bold
hi Statement    guifg=#2fc626 guibg=#000000 gui=none ctermfg=108 ctermbg=none cterm=none
hi StatusLine   guifg=#00ff00 guibg=#102010 gui=none ctermfg=249 ctermbg=236 cterm=bold
hi StatusLineNC guifg=#005500 guibg=#001000 gui=none ctermfg=243 ctermbg=236 cterm=none
hi TabLine      guifg=#00f400 guibg=#000a00 gui=none ctermfg=238 ctermbg=none cterm=none
hi TabLineFill  guifg=#00ea00 guibg=#000000 gui=none ctermfg=000 ctermbg=none cterm=none
hi TabLineSel   guifg=#00f000 guibg=#002a00 gui=none ctermfg=242 ctermbg=none cterm=none
hi Title        guifg=#09ab00 guibg=#000000 gui=bold ctermfg=108 ctermbg=none cterm=bold
hi Todo         guifg=#000000 guibg=#00ed00 gui=none ctermfg=000 ctermbg=101 cterm=none
hi Type         guifg=#1fb631 guibg=#000000 gui=none ctermfg=228 ctermbg=none cterm=none
hi Underlined   guifg=#00b400 guibg=#000000 gui=underline ctermfg=101 ctermbg=none cterm=underline
hi VertSplit    guifg=#000600 guibg=#001f00 gui=none ctermfg=236 ctermbg=236 cterm=none
hi Visual       guibg=#001500 gui=reverse ctermbg=192 cterm=none
hi VisualNOS    guibg=#002700 gui=reverse ctermbg=192 cterm=none
hi WarningMsg   guifg=#000000 guibg=#00ff00 gui=none ctermfg=108 ctermbg=none cterm=none
hi WildMenu     guifg=#00cb00 guibg=#000000 gui=reverse ctermfg=000 ctermbg=108 cterm=reverse
hi ColorColumn  guibg=#225101 ctermbg=235
hi SignColumn   guibg=#225101 ctermbg=233 ctermfg=228

hi markdownH1 ctermfg=193 cterm=bold
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1

hi yamlKey cterm=bold
