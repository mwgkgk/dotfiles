" Based on Dagon by Dee Sub Wun

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "outsider"


""""""
" SYNTAX HIGHLIGHTING
""""""""""""""""""""""""
hi Constant         cterm=NONE              ctermfg=76       ctermbg=NONE
hi String           cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Character        cterm=NONE              ctermfg=brown           ctermbg=NONE
hi Number           cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Boolean          cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Float            cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Comment          cterm=NONE              ctermfg=167         ctermbg=NONE

hi Identifier       cterm=NONE              ctermfg=187            ctermbg=NONE
hi Function         cterm=NONE              ctermfg=white           ctermbg=NONE

hi Statement        cterm=NONE              ctermfg=lightblue     	ctermbg=NONE
hi Conditional      cterm=NONE              ctermfg=lightblue     	ctermbg=NONE
hi Repeat           cterm=NONE              ctermfg=lightblue     	ctermbg=NONE
hi Label            cterm=NONE              ctermfg=lightblue      	ctermbg=NONE
hi Operator         cterm=NONE              ctermfg=187            ctermbg=NONE
hi Keyword          cterm=NONE              ctermfg=lightblue       ctermbg=NONE
hi Exception        cterm=NONE              ctermfg=140     ctermbg=NONE

hi PreProc          cterm=NONE              ctermfg=139     ctermbg=NONE
hi Include          cterm=NONE              ctermfg=140     ctermbg=NONE
hi Define           cterm=NONE              ctermfg=140     ctermbg=NONE
hi Macro            cterm=NONE              ctermfg=140     ctermbg=NONE
hi PreCondit        cterm=NONE              ctermfg=140     ctermbg=NONE

hi Type             cterm=NONE              ctermfg=156   	    ctermbg=NONE
hi StorageClass     cterm=NONE              ctermfg=green       	ctermbg=NONE
hi Structure        cterm=NONE              ctermfg=green       	ctermbg=NONE
hi Typedef          cterm=NONE              ctermfg=green       	ctermbg=NONE

hi Special          cterm=NONE              ctermfg=187            ctermbg=NONE
hi SpecialChar      cterm=NONE              ctermfg=202         ctermbg=NONE
hi Tag              cterm=NONE              ctermfg=202        ctermbg=NONE
hi Delimiter        cterm=NONE              ctermfg=167        ctermbg=NONE
hi SpecialComment   cterm=NONE              ctermfg=202        ctermbg=NONE
hi Debug            cterm=NONE              ctermfg=202        ctermbg=NONE

hi xmlTagName       cterm=NONE			    ctermfg=167		ctermbg=NONE
hi xmlCdata         cterm=NONE			    ctermfg=167		ctermbg=NONE
hi xmlAttrib        cterm=NONE			    ctermfg=167		ctermbg=NONE
hi htmlTagName      cterm=NONE			    ctermfg=222		ctermbg=NONE
hi htmlArg          cterm=NONE			    ctermfg=167		ctermbg=NONE
hi htmlItalic		cterm=NONE			  	ctermfg=NONE			ctermbg=NONE

hi Underlined       cterm=underline         ctermfg=187            ctermbg=NONE

hi Ignore           cterm=NONE              ctermfg=darkgrey        ctermbg=NONE

hi Error            cterm=NONE              ctermfg=white           ctermbg=167

hi Todo             cterm=NONE              ctermfg=187            ctermbg=166


""""""
" INTERFACE
""""""""""""""""""""""""
hi Cursor           cterm=NONE              ctermfg=187            ctermbg=red
hi Directory        cterm=NONE              ctermfg=lightblue       ctermbg=NONE
hi ErrorMsg         cterm=NONE              ctermfg=white           ctermbg=167
hi LineNr           cterm=NONE              ctermfg=238             ctermbg=235
hi CursorLineNr     cterm=NONE              ctermfg=167             ctermbg=237
hi MatchParen       cterm=NONE              ctermfg=black           ctermbg=green
hi ModeMsg          cterm=NONE              ctermfg=167       ctermbg=NONE
hi MoreMsg          cterm=NONE              ctermfg=76       ctermbg=NONE
hi NonText          cterm=NONE              ctermfg=237              ctermbg=NONE
hi Normal			cterm=NONE				ctermfg=187			ctermbg=NONE
hi Question         cterm=NONE              ctermfg=green           ctermbg=NONE
hi SpecialKey       cterm=NONE              ctermfg=237              ctermbg=NONE
hi Title            cterm=NONE              ctermfg=222		    ctermbg=NONE
hi VertSplit        cterm=none              ctermfg=235              ctermbg=235
hi WarningMsg       cterm=NONE              ctermfg=white           ctermbg=167
hi WildMenu         cterm=NONE              ctermfg=white           ctermbg=lightblue
hi CursorColumn     cterm=NONE			  ctermfg=NONE			ctermbg=235
hi CursorLine       cterm=NONE			  ctermbg=NONE			ctermbg=235
hi ColorColumn     cterm=NONE			  ctermfg=NONE			ctermbg=235
hi SignColumn		cterm=NONE			  ctermfg=NONE			ctermbg=234


""""""
" TABS
""""""""""""""""""""""""
hi TabLine          cterm=reverse      ctermfg=235          ctermbg=239
hi TabLineFill      cterm=reverse      ctermfg=235          ctermbg=187
hi TabLineSel       cterm=reverse      ctermfg=237          ctermbg=167


""""""
" COMPLETION
""""""""""""""""""""""""
hi Pmenu            cterm=none	            ctermfg=248             ctermbg=235
hi PmenuSel         cterm=none              ctermfg=fg              ctermbg=236


""""""
" STATUS
""""""""""""""""""""""""
hi StatusLine       cterm=reverse              ctermfg=237              ctermbg=167
hi StatusLineNC     cterm=reverse              ctermfg=235           ctermbg=239


""""""
" DIFF
""""""""""""""""""""""""
hi DiffAdd          cterm=NONE              ctermfg=black 	        ctermbg=40
hi DiffChange       cterm=NONE              ctermfg=black           ctermbg=brown
hi DiffDelete       cterm=NONE              ctermfg=black	        ctermbg=red
hi DiffText         cterm=NONE              ctermfg=red 	        ctermbg=brown


""""""
" VISUAL
""""""""""""""""""""""""
hi Visual           cterm=NONE              ctermfg=NONE        	ctermbg=95
hi VisualNOS        cterm=bold,underline    ctermfg=NONE            ctermbg=NONE


""""""
" FOLDING
""""""""""""""""""""""""
hi Folded           cterm=NONE              ctermfg=245   	    ctermbg=NONE
hi FoldColumn       cterm=NONE              ctermfg=245       	ctermbg=NONE


""""""
" SEARCH
""""""""""""""""""""""""
hi IncSearch        cterm=none              ctermfg=none            ctermbg=240
hi Search           cterm=none              ctermfg=none            ctermbg=240


"vim: sw=4

