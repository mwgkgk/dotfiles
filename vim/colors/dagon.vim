" Vim color file
" Name: Dagon
" Author: Dee Sub Wun
" Last change: 10th April 2011


set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "dagon"


""""""
" SYNTAX HIGHLIGHTING
""""""""""""""""""""""""
hi Constant         gui=NONE         	  guifg=#8DB3D9         guibg=NONE
hi String           gui=NONE              guifg=#8DB3D9         guibg=NONE
hi Character        gui=NONE	          guifg=#8DB3D9         guibg=NONE
hi Number           gui=NONE    	      guifg=#8DB3D9         guibg=NONE
hi Boolean          gui=NONE        	  guifg=#8DB3D9         guibg=NONE
hi Float            gui=NONE           	  guifg=#8DB3D9         guibg=NONE
hi Comment          gui=NONE	          guifg=#CC5151         guibg=NONE

hi Identifier       gui=NONE              guifg=#E6AC43	        guibg=NONE
hi Function         gui=bold              guifg=#E6AC43 		guibg=NONE

hi Statement        gui=bold              guifg=#8DB3D9         guibg=NONE
hi Conditional      gui=bold              guifg=#8DB3D9         guibg=NONE
hi Repeat           gui=bold              guifg=#8DB3D9         guibg=NONE
hi Label            gui=bold              guifg=#8DB3D9         guibg=NONE
hi Operator         gui=NONE              guifg=#8DB3D9         guibg=NONE
hi Keyword          gui=bold              guifg=#8DB3D9         guibg=NONE
hi Exception        gui=NONE              guifg=#BDA0D9         guibg=NONE

hi PreProc          gui=NONE              guifg=#BDA0D9         guibg=NONE
hi Include          gui=NONE              guifg=#BDA0D9         guibg=NONE
hi Define           gui=NONE              guifg=#BDA0D9         guibg=NONE
hi Macro            gui=NONE              guifg=#BDA0D9         guibg=NONE
hi PreCondit        gui=NONE              guifg=#BDA0D9         guibg=NONE

hi Type             gui=NONE              guifg=#8DB3D9         guibg=NONE
hi StorageClass     gui=NONE              guifg=#8DB3D9         guibg=NONE
hi Structure        gui=NONE              guifg=#8DB3D9         guibg=NONE
hi Typedef          gui=NONE              guifg=#8DB3D9         guibg=NONE

hi Special          gui=NONE              guifg=#E6D8AD         guibg=NONE
hi SpecialChar      gui=NONE              guifg=#E6D8AD         guibg=NONE
hi Tag              gui=NONE              guifg=#8DB3D9         guibg=NONE
hi Delimiter        gui=NONE              guifg=#FFFFFF         guibg=NONE
hi SpecialComment   gui=NONE              guifg=#FFFFFF         guibg=NONE
hi Debug            gui=NONE              guifg=#FFFFFF         guibg=NONE

hi xmlTagName       gui=NONE			  guifg=#8DB3D9			guibg=NONE
hi xmlCdata         gui=NONE			  guifg=#8A9BA3			guibg=NONE
hi xmlAttrib        gui=NONE			  guifg=#8DB3D9			guibg=NONE
hi htmlTagName      gui=NONE			  guifg=#D9D9DE			guibg=NONE
hi htmlArg          gui=NONE			  guifg=#D9D9DE			guibg=NONE
hi htmlItalic		gui=italic			  guifg=NONE			guibg=NONE
hi htmlBold			gui=bold			  guifg=NONE			guibg=NONE

hi Underlined       gui=underline         guifg=#C5C5C5         guibg=NONE

hi Ignore           gui=NONE              guifg=#FFFFFF         guibg=NONE

hi Error            gui=bold              guifg=#FFFFFF         guibg=#FF0000

hi Todo             gui=NONE              guifg=#FFFF00         guibg=NONE

hi SignColumn		gui=NONE			  guifg=NONE			guibg=NONE


""""""
" INTERFACE
""""""""""""""""""""""""
hi Cursor           gui=NONE              guifg=#000000         guibg=#FFFF00
hi CursorLine       gui=NONE			  guifg=NONE			guibg=#515166
hi CursorColumn     gui=NONE			  guifg=NONE			guibg=#515166
hi Directory        gui=NONE              guifg=#8DB3D9         guibg=NONE
hi ErrorMsg         gui=bold              guifg=#FFFFFF         guibg=#FF0000
hi LineNr           gui=NONE              guifg=#97B37C         guibg=NONE
hi MatchParen       gui=bold              guifg=#000000         guibg=#00FF00
hi ModeMsg          gui=NONE              guifg=#FFFFFF         guibg=NONE
hi MoreMsg          gui=NONE              guifg=#D9D9DE         guibg=NONE
hi NonText          gui=bold              guifg=#505050         guibg=NONE
hi Normal           gui=NONE              guifg=#C8C8CC         guibg=#001540
hi Question         gui=NONE              guifg=#D9D9DE         guibg=NONE
hi SpecialKey       gui=NONE              guifg=#D9D9DE         guibg=NONE
hi Title            gui=NONE              guifg=#E6AC43         guibg=NONE
hi VertSplit        gui=NONE	          guifg=#003399	        guibg=#003399
hi WarningMsg       gui=NONE              guifg=#FFA500         guibg=NONE
hi WildMenu         gui=NONE              guifg=#FFFFFF         guibg=#3A3A3F


""""""
" TABS
""""""""""""""""""""""""
hi TabLine          gui=italic,reverse    guifg=#001540	        guibg=#003399
hi TabLineFill      gui=italic,reverse    guifg=#001540	        guibg=#003399
hi TabLineSel       gui=bold,reverse      guifg=#003399	        guibg=#FFFFFF


""""""
" STATUS
""""""""""""""""""""""""
hi StatusLine       gui=NONE		      guifg=#FFFFFF         guibg=#003399
hi StatusLineNC     gui=italic		 	  guifg=#001540	        guibg=#003399


""""""
" COMPLETION
""""""""""""""""""""""""
hi Pmenu            gui=NONE              guifg=#1A1A1A 		guibg=#8DB3D9
hi PmenuSel         gui=NONE              guifg=#FFFFFF         guibg=#003399
hi PmenuSbar 		gui=NONE			  guifg=NONE			guibg=#FFFFFF
hi PmenuThumb 		gui=NONE			  guifg=NONE		  	guibg=#E6AC43


""""""
" DIFF
""""""""""""""""""""""""
hi DiffAdd          gui=NONE              guifg=#000000         guibg=#A7CC66
hi DiffChange       gui=NONE              guifg=#000000         guibg=#CCA866
hi DiffDelete       gui=bold              guifg=#000000         guibg=#CC6B66
hi DiffText         gui=bold              guifg=#FFFF00         guibg=NONE


""""""
" FOLDING
""""""""""""""""""""""""
hi Folded           gui=NONE              guifg=#ADCAD9 		guibg=#000C26
hi FoldColumn       gui=NONE              guifg=#ADCAD9         guibg=#000C26


""""""
" VISUAL
""""""""""""""""""""""""
hi Visual           gui=NONE              guifg=#E6E6E6         guibg=#515166
hi VisualNOS        gui=NONE              guifg=#E6E6E6         guibg=#515166


""""""
" SEARCH
""""""""""""""""""""""""
hi IncSearch        gui=NONE              guifg=#000000          guibg=#E6E673
hi Search           gui=NONE              guifg=#000000          guibg=#E6E673




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                      NO GUI                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""
" SYNTAX HIGHLIGHTING
""""""""""""""""""""""""
hi Constant         cterm=NONE              ctermfg=darkgreen       ctermbg=NONE
hi String           cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Character        cterm=NONE              ctermfg=brown           ctermbg=NONE
hi Number           cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Boolean          cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Float            cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Comment          cterm=NONE              ctermfg=darkred         ctermbg=NONE

hi Identifier       cterm=NONE              ctermfg=grey            ctermbg=NONE
hi Function         cterm=NONE              ctermfg=white           ctermbg=NONE

hi Statement        cterm=NONE              ctermfg=lightblue     	ctermbg=NONE
hi Conditional      cterm=NONE              ctermfg=lightblue     	ctermbg=NONE
hi Repeat           cterm=NONE              ctermfg=lightblue     	ctermbg=NONE
hi Label            cterm=NONE              ctermfg=lightblue      	ctermbg=NONE
hi Operator         cterm=NONE              ctermfg=grey            ctermbg=NONE
hi Keyword          cterm=NONE              ctermfg=lightblue       ctermbg=NONE
hi Exception        cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE

hi PreProc          cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE
hi Include          cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE
hi Define           cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE
hi Macro            cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE
hi PreCondit        cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE

hi Type             cterm=NONE              ctermfg=green   	    ctermbg=NONE
hi StorageClass     cterm=NONE              ctermfg=green       	ctermbg=NONE
hi Structure        cterm=NONE              ctermfg=green       	ctermbg=NONE
hi Typedef          cterm=NONE              ctermfg=green       	ctermbg=NONE

hi Special          cterm=NONE              ctermfg=grey            ctermbg=NONE
hi SpecialChar      cterm=NONE              ctermfg=darkcyan         ctermbg=NONE
hi Tag              cterm=NONE              ctermfg=darkcyan        ctermbg=NONE
hi Delimiter        cterm=NONE              ctermfg=darkcyan        ctermbg=NONE
hi SpecialComment   cterm=NONE              ctermfg=darkcyan        ctermbg=NONE
hi Debug            cterm=NONE              ctermfg=darkcyan        ctermbg=NONE

hi xmlTagName       cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi xmlCdata         cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi xmlAttrib        cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi htmlTagName      cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi htmlArg          cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi htmlItalic		cterm=NONE			  	ctermfg=NONE			ctermbg=NONE

hi Underlined       cterm=underline         ctermfg=grey            ctermbg=NONE

hi Ignore           cterm=NONE              ctermfg=darkgrey        ctermbg=NONE

hi Error            cterm=NONE              ctermfg=white           ctermbg=darkred

hi Todo             cterm=NONE              ctermfg=grey            ctermbg=darkgreen


""""""
" INTERFACE
""""""""""""""""""""""""
hi Cursor           cterm=NONE              ctermfg=grey            ctermbg=red
hi Directory        cterm=NONE              ctermfg=lightblue       ctermbg=NONE
hi ErrorMsg         cterm=NONE              ctermfg=white           ctermbg=darkred
hi LineNr           cterm=NONE              ctermfg=darkgreen       ctermbg=NONE
hi MatchParen       cterm=NONE              ctermfg=black           ctermbg=green
hi ModeMsg          cterm=NONE              ctermfg=lightblue       ctermbg=NONE
hi MoreMsg          cterm=NONE              ctermfg=darkgreen       ctermbg=NONE
hi NonText          cterm=NONE              ctermfg=blue            ctermbg=NONE
hi Normal			cterm=NONE				ctermfg=grey			ctermbg=NONE
hi Question         cterm=NONE              ctermfg=green           ctermbg=NONE
hi SpecialKey       cterm=NONE              ctermfg=darkgreen       ctermbg=NONE
hi Title            cterm=NONE              ctermfg=white		    ctermbg=NONE
hi VertSplit        cterm=NONE			    ctermfg=darkblue        ctermbg=black
hi WarningMsg       cterm=NONE              ctermfg=white           ctermbg=darkred
hi WildMenu         cterm=NONE              ctermfg=white           ctermbg=lightblue


""""""
" TABS
""""""""""""""""""""""""
hi TabLine          cterm=bold,reverse      ctermfg=black          ctermbg=blue
hi TabLineFill      cterm=bold,reverse      ctermfg=black          ctermbg=grey
hi TabLineSel       cterm=bold,reverse      ctermfg=darkblue       ctermbg=white


""""""
" COMPLETION
""""""""""""""""""""""""
hi Pmenu            cterm=reverse	        ctermfg=black           ctermbg=grey
hi PmenuSel         cterm=bold              ctermfg=white           ctermbg=lightblue


""""""
" STATUS
""""""""""""""""""""""""
hi StatusLine       cterm=bold,reverse      ctermfg=darkblue        ctermbg=grey
hi StatusLineNC     cterm=bold,reverse      ctermfg=black           ctermbg=blue


""""""
" DIFF
""""""""""""""""""""""""
hi DiffAdd          cterm=NONE              ctermfg=grey 	        ctermbg=green
hi DiffChange       cterm=NONE              ctermfg=black           ctermbg=brown
hi DiffDelete       cterm=NONE              ctermfg=grey	        ctermbg=red
hi DiffText         cterm=NONE              ctermfg=red 	        ctermbg=brown


""""""
" VISUAL
""""""""""""""""""""""""
hi Visual           cterm=NONE              ctermfg=grey        	ctermbg=lightblue
hi VisualNOS        cterm=bold,underline    ctermfg=NONE            ctermbg=NONE


""""""
" FOLDING
""""""""""""""""""""""""
hi Folded           cterm=NONE              ctermfg=green   	    ctermbg=NONE
hi FoldColumn       cterm=NONE              ctermfg=green       	ctermbg=NONE


""""""
" SEARCH
""""""""""""""""""""""""
hi IncSearch        cterm=NONE              ctermfg=grey            ctermbg=green
hi Search           cterm=NONE              ctermfg=grey            ctermbg=green


"vim: sw=4

