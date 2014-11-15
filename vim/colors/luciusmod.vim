"=============================================================================
" Name:   luciusmod 
" Author: Takeshi NISHIDA <ns9tks@DELETE-ME.gmail.com>
"
" This is derived from lucius.vim.
"
"=============================================================================
" Original Name: lucius.vim
" Original Maintainer:  Jonathan Filip <jfilip1024@gmail.com>
" Original Version: 3.5
"=============================================================================


set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="luciusmod"


" Base color
" ----------
hi Normal           guifg=#dadada           guibg=#262626
hi Normal           ctermfg=253             ctermbg=235


" Comment Group
" -------------
" any comment
hi Comment          guifg=#767676                                   gui=none
hi Comment          ctermfg=243                                     cterm=none


" Constant Group
" --------------
" any constant
hi Constant         guifg=#87d7d7                                   gui=none
hi Constant         ctermfg=116                                     cterm=none
" strings
hi String           guifg=#87afd7                                   gui=none
hi String           ctermfg=110                                     cterm=none
" character constant
hi Character        guifg=#87afd7                                   gui=none
hi Character        ctermfg=110                                     cterm=none
" numbers decimal/hex
hi Number           guifg=#87d7d7                                   gui=none
hi Number           ctermfg=116                                     cterm=none
" true, false
hi Boolean          guifg=#87d7d7                                   gui=none
hi Boolean          ctermfg=116                                     cterm=none
" float
hi Float            guifg=#87d7d7                                   gui=none
hi Float            ctermfg=116                                     cterm=none


" Identifier Group
" ----------------
" any variable name
hi Identifier       guifg=#d7af87                                   gui=none
hi Identifier       ctermfg=180                                     cterm=none
" function, method, class
hi Function         guifg=#d7af87                                   gui=none
hi Function         ctermfg=180                                     cterm=none


" Statement Group
" ---------------
" any statement
hi Statement        guifg=#afd787                                   gui=none
hi Statement        ctermfg=150                                     cterm=none
" if, then, else
hi Conditional      guifg=#afd787                                   gui=none
hi Conditional      ctermfg=150                                     cterm=none
" try, catch, throw, raise
hi Exception        guifg=#afd787                                   gui=none
hi Exception        ctermfg=150                                     cterm=none
" for, while, do
hi Repeat           guifg=#afd787                                   gui=none
hi Repeat           ctermfg=150                                     cterm=none
" case, default
hi Label            guifg=#afd787                                   gui=none
hi Label            ctermfg=150                                     cterm=none
" sizeof, +, *
hi Operator         guifg=#afd787                                   gui=none
hi Operator         ctermfg=150                                     cterm=none
" any other keyword
hi Keyword          guifg=#afd787                                   gui=none
hi Keyword          ctermfg=150                                     cterm=none


" Preprocessor Group
" ------------------
" generic preprocessor
hi PreProc          guifg=#d7d7af                                   gui=none
hi PreProc          ctermfg=187                                     cterm=none
" #include
hi Include          guifg=#d7d7af                                   gui=none
hi Include          ctermfg=187                                     cterm=none
" #define
hi Define           guifg=#d7d7af                                   gui=none
hi Define           ctermfg=187                                     cterm=none
" same as define
hi Macro            guifg=#d7d7af                                   gui=none
hi Macro            ctermfg=187                                     cterm=none
" #if, #else, #endif
hi PreCondit        guifg=#d7d7af                                   gui=none
hi PreCondit        ctermfg=187                                     cterm=none


" Type Group
" ----------
" int, long, char
hi Type             guifg=#87d7af                                   gui=none
hi Type             ctermfg=115                                     cterm=none
" static, register, volative
hi StorageClass     guifg=#87d7af                                   gui=none
hi StorageClass     ctermfg=115                                     cterm=none
" struct, union, enum
hi Structure        guifg=#87d7af                                   gui=none
hi Structure        ctermfg=115                                     cterm=none
" typedef
hi Typedef          guifg=#87d7af                                   gui=none
hi Typedef          ctermfg=115                                     cterm=none


" Special Group
" -------------
" any special symbol
hi Special          guifg=#d7afaf                                   gui=none
hi Special          ctermfg=181                                     cterm=none
" special character in a constant
hi SpecialChar      guifg=#d7afaf                                   gui=none
hi SpecialChar      ctermfg=181                                     cterm=none
" things you can CTRL-]
hi Tag              guifg=#d7afaf                                   gui=none
hi Tag              ctermfg=181                                     cterm=none
" character that needs attention
hi Delimiter        guifg=#d7afaf                                   gui=none
hi Delimiter        ctermfg=181                                     cterm=none
" special things inside a comment
hi SpecialComment   guifg=#d7afaf                                   gui=none
hi SpecialComment   ctermfg=181                                     cterm=none
" debugging statements
hi Debug            guifg=#d7afaf           guibg=NONE              gui=none
hi Debug            ctermfg=181             ctermbg=NONE            cterm=none


" Underlined Group
" ----------------
" text that stands out, html links
hi Underlined       guifg=fg                                        gui=underline
hi Underlined       ctermfg=fg                                      cterm=underline


" Ignore Group
" ------------
" left blank, hidden
hi Ignore           guifg=bg
hi Ignore           ctermfg=bg


" Error Group
" -----------
" any erroneous construct
hi Error            guifg=#d75757           guibg=#5f0000           gui=none
hi Error            ctermfg=167             ctermbg=52            cterm=none


" Todo Group
" ----------
" todo, fixme, note, xxx
hi Todo             guifg=#ffff87           guibg=NONE              gui=underline
hi Todo             ctermfg=228             ctermbg=NONE            cterm=underline


" Spelling
" --------
" word not recognized
hi SpellBad         guisp=#ff0000                                   gui=undercurl
hi SpellBad                                 ctermbg=196             cterm=undercurl
" word not capitalized
hi SpellCap         guisp=#eeee00                                   gui=undercurl
hi SpellCap                                 ctermbg=226             cterm=undercurl
" rare word
hi SpellRare        guisp=#ffa500                                   gui=undercurl
hi SpellRare                                ctermbg=214             cterm=undercurl
" wrong spelling for selected region
hi SpellLocal       guisp=#ffa500                                   gui=undercurl
hi SpellLocal                               ctermbg=214             cterm=undercurl


" Cursor
" ------
" character under the cursor
" [removed] Cursor
" like cursor, but used when in IME mode
hi CursorIM                                 guibg=#ff0000
" cursor column
hi CursorColumn     guifg=NONE              guibg=#303030           gui=none
hi CursorColumn     ctermfg=NONE            ctermbg=236             cterm=none
" cursor line/row
hi CursorLine       gui=NONE                guibg=#303030           gui=none
hi CursorLine       cterm=NONE              ctermbg=236             cterm=none


" Misc
" ----
" directory names and other special names in listings
hi Directory        guifg=#afd7af                                   gui=none
hi Directory        ctermfg=151                                     cterm=none
" error messages on the command line
hi ErrorMsg         guifg=#ff0000           guibg=NONE              gui=none
hi ErrorMsg         ctermfg=196             ctermbg=NONE            cterm=none
" column separating vertically split windows
hi VertSplit        guifg=#777777           guibg=#444444           gui=none
hi VertSplit        ctermfg=244             ctermbg=238             cterm=none
" columns where signs are displayed (used in IDEs)
hi SignColumn       guifg=#9fafaf           guibg=#181818           gui=none
hi SignColumn       ctermfg=145             ctermbg=233             cterm=none
" line numbers
hi LineNr           guifg=#818698           guibg=#3a3a3a
hi LineNr           ctermfg=245             ctermbg=237
" match parenthesis, brackets
hi MatchParen       guifg=#00ff00           guibg=NONE              gui=underline
hi MatchParen       ctermfg=46              ctermbg=NONE            cterm=underline
" the 'more' prompt when output takes more than one line
hi MoreMsg          guifg=#00875f                                   gui=none
hi MoreMsg          ctermfg=29                                      cterm=none
" text showing what mode you are in
hi ModeMsg          guifg=#87d7ff           guibg=NONE              gui=none
hi ModeMsg          ctermfg=117             ctermbg=NONE            cterm=none
" the '~' and '@' and showbreak, '>' double wide char doesn't fit on line
hi NonText          guifg=#00875f                                   gui=none
hi NonText          ctermfg=29                                      cterm=none
" the hit-enter prompt (show more output) and yes/no questions
hi Question         guifg=#87ffaf                                   gui=none
hi Question         ctermfg=121                                     cterm=none
" meta and special keys used with map, unprintable characters
hi SpecialKey       guifg=#4e4e4e
hi SpecialKey       ctermfg=239
" titles for output from :set all, :autocmd, etc
hi Title            guifg=#5fafd7                                   gui=none
hi Title            ctermfg=74                                      cterm=none
" warning messages
hi WarningMsg       guifg=#d7875f                                   gui=none
hi WarningMsg       ctermfg=173                                     cterm=none
" current match in the wildmenu completion
hi WildMenu         guifg=#000000           guibg=#d7d787
hi WildMenu         ctermfg=16              ctermbg=186
" color column highlighting
hi ColorColumn      guifg=NONE              guibg=#403630           gui=none
hi ColorColumn      ctermfg=NONE            ctermbg=94              cterm=none


" Diff
" ----
" added line
hi DiffAdd          guifg=#80a090           guibg=#313c36           gui=none
hi DiffAdd          ctermfg=fg              ctermbg=22              cterm=none
" changed line
hi DiffChange       guifg=NONE              guibg=#4a343a           gui=none
hi DiffChange       ctermfg=fg              ctermbg=52              cterm=none
" deleted line
hi DiffDelete       guifg=#6c6661           guibg=#3c3631           gui=none
hi DiffDelete       ctermfg=fg              ctermbg=58              cterm=none
" changed text within line
hi DiffText         guifg=#f05060           guibg=#4a343a           gui=bold
hi DiffText         ctermfg=203             ctermbg=52              cterm=bold


" Folds
" -----
" line used for closed folds
hi Folded           guifg=#c0c0c0           guibg=#005f5f           gui=none
hi Folded           ctermfg=249             ctermbg=23              cterm=none
" column on side used to indicated open and closed folds
hi FoldColumn       guifg=#c0c0c0           guibg=#005f5f           gui=none
hi FoldColumn       ctermfg=249             ctermbg=23              cterm=none


" Search
" ------
" highlight incremental search text; also highlight text replaced with :s///c
hi IncSearch        guifg=#5fffff                                   gui=reverse
hi IncSearch        ctermfg=87                                      cterm=reverse
" hlsearch (last search pattern), also used for quickfix
hi Search                                    guibg=#ffaf00          gui=none
hi Search                                    ctermbg=214            cterm=none


" Popup Menu
" ----------
" normal item in popup
hi Pmenu            guifg=fg                guibg=#3a3a3a           gui=none
hi Pmenu            ctermfg=fg              ctermbg=237             cterm=none
" selected item in popup
hi PmenuSel         guifg=#d7d787           guibg=#5f5f5f           gui=none
hi PmenuSel         ctermfg=186             ctermbg=59             cterm=none
" scrollbar in popup
hi PMenuSbar                                guibg=#5f5f5f           gui=none
hi PMenuSbar                                ctermbg=59              cterm=none
" thumb of the scrollbar in the popup
hi PMenuThumb                               guibg=#878787           gui=none
hi PMenuThumb                               ctermbg=102             cterm=none


" Status Line
" -----------
" status line for current window
hi StatusLine       guifg=#e0e0e0           guibg=#444444           gui=none,underline
hi StatusLine       ctermfg=254             ctermbg=238             cterm=none,underline
" status line for non-current windows
hi StatusLineNC     guifg=#777777           guibg=#444444           gui=none
hi StatusLineNC     ctermfg=244             ctermbg=238             cterm=none


" Tab Lines
" ---------
" tab pages line, not active tab page label
hi TabLine          guifg=#777777           guibg=#444444           gui=underline
hi TabLine          ctermfg=244             ctermbg=238             cterm=underline
" tab pages line, where there are no labels
hi TabLineFill      guifg=#777777           guibg=#444444           gui=underline
hi TabLineFill      ctermfg=244             ctermbg=238             cterm=underline
" tab pages line, active tab page label
hi TabLineSel       guifg=#efefef           guibg=#1c1c1b           gui=bold
hi TabLineSel       ctermfg=254             ctermbg=233             cterm=bold


" Visual
" ------
" visual mode selection
hi Visual           guifg=NONE              guibg=#5f5f87
hi Visual           ctermfg=NONE            ctermbg=60
" visual mode selection when vim is not owning the selection (x11 only)
hi VisualNOS        guifg=fg                                        gui=underline
hi VisualNOS        ctermfg=fg                                      cterm=underline


" syntax/diff
" ------
hi diffFile         guifg=#00afff           gui=bold,underline
hi diffFile         ctermfg=39              cterm=bold,underline
hi diffLine         guifg=#00afff           gui=underline
hi diffLine         ctermfg=39              cterm=underline
