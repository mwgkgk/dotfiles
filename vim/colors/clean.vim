" Vim color file
" Name: Clean
" Author: Dee Sub Wun


set background=light
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "clean"


""""""""""""""
" .Xdefaults / .Xresources for better results with the console version
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ! Cursor
" XTerm*cursorColor: #FF0000

" ! Fonts (xft)
" Xft*antialias: true
" Xft*hinting: true
" Xft*hintstyle: 3
" Xft*dpi: 96
"
" !XTerm*faceName: xft: Terminus:pixelsize=17:antialias=true
" OR:
" XTerm*faceName: xft: Monospace:pixelsize=14:antialias=true
"
" ! Colors
" XTerm*background: #FFFFFF
" XTerm*foreground: #000000

" !----- NON BOLD -----!
" XTerm*color0:  #000000 "black
" XTerm*color1:  #993333 "darkred
" XTerm*color2:  #008C00 "darkgreen
" XTerm*color3:  #E69900 "brown
" XTerm*color4:  #0043CC "darkblue
" XTerm*color5:  #990099 "darkmagenta
" XTerm*color6:  #009999 "darkcyan
" XTerm*color7:  #E6E6E6 "grey

" !------- BOLD -------!
" XTerm*color8:  #595959  "darkgrey
" XTerm*color9:  #E60027  "red
" XTerm*color10: #6CD900 "green
" XTerm*color11: #FFD040 "yellow
" XTerm*color12: #1C89F3 "blue
" XTerm*color13: #D900D9 "magenta
" XTerm*color14: #00D9D9 "cyan
" XTerm*color15: #FFFFFF "white


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                              GUI                                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""
" Interface
""""""""""""""""""""""""
hi Cursor           			gui=NONE          guifg=#E6E6E6         guibg=#E60027
hi CursorLine    			    gui=NONE		  guifg=#000000			guibg=#E6E6E6
hi CursorColumn     			gui=NONE		  guifg=NONE			guibg=#E6E6E6
hi Directory        			gui=NONE          guifg=#1C89F3      	guibg=NONE
hi ErrorMsg         			gui=NONE          guifg=#FFFFFF         guibg=#993333
hi MatchParen       			gui=NONE          guifg=#FFFFFF         guibg=#6CD900
hi ModeMsg          			gui=NONE          guifg=#1C89F3   		guibg=NONE
hi MoreMsg          			gui=NONE          guifg=#008C00         guibg=NONE
hi NonText          			gui=NONE          guifg=#009999         guibg=NONE
hi Normal						gui=NONE		  guifg=#000000			guibg=NONE
hi Question         			gui=NONE          guifg=#6CD900         guibg=NONE
hi SpecialKey       			gui=NONE          guifg=#008C00         guibg=NONE
hi VertSplit        			gui=NONE		  guifg=#000000	        guibg=#000000
hi WarningMsg       			gui=NONE          guifg=#E6E6E6         guibg=#993333
hi WildMenu         			gui=NONE          guifg=#FFFFFF         guibg=#1C89F3
hi LineNr           			gui=NONE          guifg=#E6E6E6	   		guibg=#009999


""""""
" Tabs
""""""""""""""""""""""""
hi TabLine          			gui=NONE		  guifg=#009999       	guibg=#000000
hi TabLineFill      			gui=NONE      	  guifg=#009999       	guibg=#000000
hi TabLineSel       			gui=NONE 		  guifg=#FFFFFF        	guibg=#009999


""""""
" Status
""""""""""""""""""""""""
hi StatusLine       			gui=bold      	  guifg=#FFFFFF	    	guibg=#009999
hi StatusLineNC     			gui=NONE		  guifg=#009999       	guibg=#000000


""""""
" Completion
""""""""""""""""""""""""
hi Pmenu            			gui=reverse	      guifg=#000000         guibg=#009999
hi PmenuSel         			gui=bold          guifg=#FFFFFF         guibg=#00D9D9


""""""
" Diff
""""""""""""""""""""""""
hi DiffAdd          			gui=NONE          guifg=#E6E6E6 	    guibg=#6CD900
hi DiffChange       			gui=NONE          guifg=#000000         guibg=#E69900
hi DiffDelete       			gui=NONE          guifg=#E6E6E6	        guibg=#E60027
hi DiffText         			gui=NONE          guifg=#E60027 	    guibg=#E69900


""""""
" Visual
""""""""""""""""""""""""
hi Visual          				gui=NONE          guifg=#E6E6E6        	guibg=#1C89F3
hi VisualNOS        			gui=NONE		  guifg=NONE            guibg=NONE


""""""
" Folding
""""""""""""""""""""""""
hi Folded           			gui=NONE          guifg=#E6E6E6   	    guibg=#1C89F3
hi FoldColumn       			gui=NONE          guifg=#E6E6E6       	guibg=#1C89F3


""""""
" Search
""""""""""""""""""""""""
hi IncSearch        			gui=NONE          guifg=#E6E6E6         guibg=#6CD900
hi Search           			gui=NONE          guifg=#E6E6E6         guibg=#6CD900


""""""
" Main Highlighting
""""""""""""""""""""""""
hi Constant         			gui=NONE          guifg=#008C00         guibg=NONE
hi String           			gui=NONE          guifg=#009999       	guibg=NONE
hi Character        			gui=NONE          guifg=#009999         guibg=NONE
hi Number           			gui=NONE          guifg=#009999      	guibg=NONE
hi Boolean          			gui=NONE          guifg=#009999       	guibg=NONE
hi Float            			gui=NONE          guifg=#009999       	guibg=NONE
hi Comment          			gui=NONE          guifg=#993333         guibg=NONE

hi Identifier       			gui=NONE          guifg=#595959       	guibg=NONE
hi Function         			gui=NONE          guifg=#000000         guibg=NONE

hi Statement        			gui=NONE          guifg=#595959     	guibg=NONE
hi Keyword          			gui=NONE          guifg=#595959       	guibg=NONE

hi Conditional      			gui=NONE          guifg=#00D9D9     	guibg=NONE
hi Repeat           			gui=NONE          guifg=#00D9D9     	guibg=NONE
hi Label            			gui=NONE          guifg=#595959   		guibg=NONE
hi Operator         			gui=NONE          guifg=#1C89F3         guibg=NONE

hi Exception        			gui=NONE          guifg=#595959			guibg=NONE

hi PreProc          			gui=NONE          guifg=#D900D9     	guibg=NONE
hi Include          			gui=NONE          guifg=#D900D9    	 	guibg=NONE
hi Define           			gui=NONE          guifg=#D900D9    		guibg=NONE
hi Macro            			gui=NONE          guifg=#D900D9     	guibg=NONE
hi PreCondit        			gui=NONE          guifg=#D900D9     	guibg=NONE

hi Type             			gui=NONE          guifg=#6CD900   	    guibg=NONE
hi StorageClass     			gui=NONE          guifg=#008C00      	guibg=NONE
hi Structure        			gui=NONE          guifg=#6CD900       	guibg=NONE
hi Typedef          			gui=NONE          guifg=#6CD900       	guibg=NONE

hi Special          			gui=NONE          guifg=#000000         guibg=NONE
hi SpecialChar      			gui=NONE          guifg=#1C89F3     	guibg=NONE

hi Underlined       			gui=underline     guifg=#E6E6E6         guibg=NONE

hi Ignore          		 		gui=NONE          guifg=#595959         guibg=NONE

hi Error            			gui=NONE          guifg=#E6E6E6         guibg=#993333

hi Todo             			gui=NONE          guifg=#E6E6E6         guibg=#008C00


""""""
" HTML
""""""""""""""""""""""""
hi Title            			gui=NONE          guifg=#595959			guibg=NONE
hi htmlItalic					gui=NONE		  guifg=NONE			guibg=NONE
hi htmlTag		    			gui=NONE          guifg=#595959       	guibg=NONE
hi htmlEndTag					gui=NONE		  guifg=#595959			guibg=NONE
hi htmlTagError					gui=NONE		  guifg=#E6E6E6			guibg=#993333
hi htmlTagName     		 		gui=NONE		  guifg=#1C89F3			guibg=NONE
hi htmlSpecialTagName			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi htmlArg          			gui=NONE		  guifg=#595959 		guibg=NONE
hi htmlString					gui=NONE		  guifg=#E69900			guibg=NONE
hi htmlComment					gui=NONE		  guifg=#993333			guibg=NONE
hi htmlCommentPart				gui=NONE		  guifg=#993333			guibg=NONE
hi htmlCommentError				gui=NONE		  guifg=#FFFFFF			guibg=#E60027
hi htmlEvent					gui=NONE		  guifg=#1C89F3			guibg=NONE


""""""
" XML
""""""""""""""""""""""""
hi xmlTodo						gui=NONE		  guifg=#FFFFFF			guibg=#E60027
hi xmlTag						gui=NONE		  guifg=#595959			guibg=NONE
hi xmlTagName					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi xmlEndTag					gui=NONE		  guifg=#595959			guibg=NONE
hi xmlEntity					gui=NONE		  guifg=#009999			guibg=NONE
hi xmlEntityPunct				gui=NONE		  guifg=#009999			guibg=NONE

hi xmlAttrib					gui=NONE		  guifg=#000000			guibg=NONE

hi xmlString					gui=NONE		  guifg=#E69900			guibg=NONE
hi xmlComment					gui=NONE		  guifg=#993333			guibg=NONE
hi xmlCommentStart				gui=NONE		  guifg=#993333			guibg=NONE
hi xmlCommentPart				gui=NONE		  guifg=#993333			guibg=NONE
hi xmlCommentError				gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi xmlError						gui=NONE	      guifg=#FFFFFF			guibg=#993333


""""""
" JavaScript
""""""""""""""""""""""""
hi javaScript					gui=NONE		  guifg=#000000			guibg=NONE
hi javaScriptComment			gui=NONE		  guifg=#993333			guibg=NONE
hi javaScriptLineComment		gui=NONE		  guifg=#993333			guibg=NONE
hi javaScriptStringD			gui=NONE		  guifg=#E69900			guibg=NONE
hi javaScriptNumber				gui=NONE		  guifg=#008C00			guibg=NONE
hi javaScriptConditional		gui=NONE		  guifg=#1C89F3			guibg=NONE
hi javaScriptRepeat				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi javaScriptBranch				gui=NONE		  guifg=#595959			guibg=NONE
hi javaScriptStatement			gui=NONE		  guifg=#595959			guibg=NONE
hi javaScriptFunction			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi javaScriptBraces				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi javaScriptNull				gui=NONE		  guifg=#008C00			guibg=NONE
hi javaScriptBoolean			gui=NONE		  guifg=#008C00			guibg=NONE
hi javaScriptRegexpString		gui=NONE		  guifg=#008C00			guibg=NONE
hi javaScriptLabel				gui=NONE		  guifg=#595959			guibg=NONE
hi javaScriptMessage			gui=NONE		  guifg=#595959			guibg=NONE
hi javaScriptMember				gui=NONE		  guifg=#595959			guibg=NONE
hi javaScriptIdentifier			gui=NONE		  guifg=#595959			guibg=NONE


""""""
" CSS
""""""""""""""""""""""""
hi cssComment					gui=NONE		  guifg=#993333			guibg=NONE
hi cssTagName					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi cssCommonAttr				gui=NONE		  guifg=#000000			guibg=NONE
hi cssFontAttr					gui=NONE		  guifg=#000000			guibg=NONE
hi cssColorAttr					gui=NONE		  guifg=#008C00			guibg=NONE
hi cssRenderProp				gui=NONE	  	  guifg=#008C00			guibg=NONE
hi cssGeneratedContentProp		gui=NONE		  guifg=#008C00			guibg=NONE
hi cssBoxAttr					gui=NONE		  guifg=#000000			guibg=NONE
hi cssPseudoClass				gui=NONE		  guifg=#000000			guibg=NONE
hi cssPseudoClassId				gui=NONE		  guifg=#D900D9			guibg=NONE
hi cssColor						gui=NONE		  guifg=#000000			guibg=NONE
hi cssURL						gui=NONE		  guifg=#E69900			guibg=NONE
hi cssIdentifier				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi cssBraces					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi cssString					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi cssRenderAttr				gui=NONE		  guifg=#000000			guibg=NONE
hi cssUIAttr					gui=NONE		  guifg=#000000			guibg=NONE
hi cssValueLength				gui=NONE		  guifg=#000000			guibg=NONE
hi cssValueNumber				gui=NONE		  guifg=#000000			guibg=NONE
hi cssFunctionName				gui=NONE		  guifg=#000000			guibg=NONE
hi cssBraceError				gui=NONE		  guifg=#FFFFFF			guibg=#E60027
hi cssMediaComma				gui=NONE		  guifg=#000000			guibg=NONE
hi cssClassName					gui=NONE		  guifg=#1C89F3			guibg=NONE


""""""
" PHP
""""""""""""""""""""""""
hi phpComment					gui=NONE		  guifg=#993333			guibg=NONE
hi phpBoolean					gui=NONE		  guifg=#008C00			guibg=NONE
hi phpStructure					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi phpStringSingle				gui=NONE		  guifg=#E69900			guibg=NONE
hi phpStringDouble				gui=NONE		  guifg=#E69900			guibg=NONE
hi phpNumber					gui=NONE		  guifg=#008C00			guibg=NONE
hi phpFloat						gui=NONE		  guifg=#008C00			guibg=NONE
hi phpMethods					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi phpFunctions					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi phpRepeat					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi phpConditional				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi phpLabel						gui=NONE		  guifg=#595959			guibg=NONE
hi phpStatement					gui=NONE		  guifg=#595959			guibg=NONE
hi phpKeyword					gui=NONE		  guifg=#595959			guibg=NONE
hi phpType						gui=NONE		  guifg=#000000			guibg=NONE
hi phpInclude					gui=NONE		  guifg=#6CD900			guibg=NONE
hi phpDefine					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi phpParent					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi phpOperator					gui=NONE		  guifg=#000000			guibg=NONE
hi phpVarSelector				gui=NONE		  guifg=#000000			guibg=NONE
hi phpIdentifier				gui=NONE		  guifg=#000000			guibg=NONE


""""""
" C
""""""""""""""""""""""""
hi cFormat						gui=NONE		  guifg=#D900D9			guibg=NONE
hi cCppString					gui=NONE		  guifg=#E69900			guibg=NONE
hi cCommentStart				gui=NONE		  guifg=#993333			guibg=NONE
hi cLabel						gui=NONE		  guifg=#595959			guibg=NONE
hi cUserLabel					gui=NONE		  guifg=#595959			guibg=NONE
hi cConditional					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi cRepeat						gui=NONE		  guifg=#1C89F3			guibg=NONE
hi cCharacter					gui=NONE		  guifg=#E69900			guibg=NONE
hi cSpecialCharacter			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi cNumber						gui=NONE		  guifg=#008C00			guibg=NONE
hi cOctal						gui=NONE		  guifg=#008C00			guibg=NONE
hi cOctalZero					gui=NONE		  guifg=#008C00			guibg=NONE
hi cFloat						gui=NONE		  guifg=#008C00			guibg=NONE
hi cOctalError					gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cParenError					gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cErrInParen					gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cErrInBracket				gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cCommentError				gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cCommentStartError			gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cSpaceError					gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cSpecialError				gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cCurlyError					gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cOperator					gui=NONE		  guifg=#008C00			guibg=NONE
hi cStorageClass				gui=NONE		  guifg=#595959			guibg=NONE
hi cInclude						gui=NONE		  guifg=#6CD900			guibg=NONE
hi cDefine						gui=NONE		  guifg=#000000			guibg=NONE
hi cIncluded					gui=NONE		  guifg=#595959			guibg=NONE
hi cError						gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi cStatement					gui=NONE		  guifg=#595959			guibg=NONE
hi cPreCondit					gui=NONE		  guifg=#000000			guibg=NONE
hi cType						gui=NONE		  guifg=#595959			guibg=NONE
hi cConstant					gui=NONE		  guifg=#595959			guibg=NONE
hi cString						gui=NONE		  guifg=#E69900			guibg=NONE
hi cComment						gui=NONE		  guifg=#993333			guibg=NONE
hi cSpecial						gui=NONE		  guifg=#1C89F3			guibg=NONE


""""""
" Python
""""""""""""""""""""""""
hi pythonBuiltin				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi pythonStatement				gui=NONE		  guifg=#595959			guibg=NONE
hi pythonConditional			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi pythonRepeat					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi pythonOperator				gui=NONE		  guifg=#595959			guibg=NONE
hi pythonInclude				gui=NONE		  guifg=#6CD900			guibg=NONE
hi pythonFunction				gui=NONE		  guifg=#D900D9			guibg=NONE
hi pythonComment				gui=NONE		  guifg=#993333			guibg=NONE
hi pythonTodo					gui=NONE		  guifg=#FFFFFF			guibg=#E60027
hi pythonString					gui=NONE		  guifg=#E69900			guibg=NONE
hi pythonRawString				gui=NONE		  guifg=#E69900			guibg=NONE
hi pythonNumber					gui=NONE		  guifg=#008C00			guibg=NONE
hi pythonDoctest				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi pythonDoctestValue			gui=NONE		  guifg=#1C89F3			guibg=NONE


""""""
" Ruby
""""""""""""""""""""""""
hi rubyClass					gui=NONE		  guifg=#6CD900			guibg=NONE
hi rubyModule					gui=NONE		  guifg=#D900D9			guibg=NONE
hi rubyDefine					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyFunction					gui=NONE		  guifg=#D900D9			guibg=NONE
hi rubyConditional				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyConditionalModifier		gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyRepeat					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyRepeatModifier			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyOptionalDo				gui=NONE		  guifg=#E60027			guibg=NONE
hi rubyControl					gui=NONE	  	  guifg=#1C89F3			guibg=NONE
hi rubyInclude					gui=NONE		  guifg=#6CD900			guibg=NONE
hi rubyInteger					gui=NONE		  guifg=#008C00			guibg=NONE
hi rubyASCIICode				gui=NONE		  guifg=#993333			guibg=NONE
hi rubyFloat					gui=NONE		  guifg=#008C00			guibg=NONE
hi rubyBoolean					gui=NONE		  guifg=#008C00			guibg=NONE
hi rubyException				gui=NONE		  guifg=#1C89F3			guibg=NONE

hi rubyClassVariable			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyConstant					gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyGlobalVariable			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyInstanceVariable			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyPseudoVariable			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyBlockParameter			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyPredefinedIdentifier		gui=NONE		  guifg=#990099			guibg=NONE
hi rubyPredefinedConstant		gui=NONE		  guifg=#990099			guibg=NONE
hi rubyPredefinedVariable		gui=NONE		  guifg=#990099			guibg=NONE
hi rubySymbol					gui=NONE		  guifg=#595959			guibg=NONE
hi rubyAccess					gui=NONE		  guifg=#595959			guibg=NONE

hi rubyComment					gui=NONE		  guifg=#993333			guibg=NONE
hi rubyTodo						gui=NONE		  guifg=#FFFFFF			guibg=#993333

hi rubyStringEscape				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyInterpolationDelimiter	gui=NONE		  guifg=#595959			guibg=NONE
hi rubySymbolDelimiter			gui=NONE		  guifg=#595959			guibg=NONE
hi rubyStringDelimiter			gui=NONE		  guifg=#E69900			guibg=NONE
hi rubyString					gui=NONE		  guifg=#E69900			guibg=NONE
hi rubyRegexpDelimiter			gui=NONE		  guifg=#00D9D9			guibg=NONE
hi rubyRegexpEscape				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyRegexpQuantifier			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyRegexpAnchor				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyRegexpDot				gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyRegexpCharClass			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyRegexpSpecial			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyRegexpComment			gui=NONE		  guifg=#1C89F3			guibg=NONE
hi rubyRegexp					gui=NONE		  guifg=#1C89F3			guibg=NONE

hi rubyInvalidVariable			gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi rubyError					gui=NONE		  guifg=#FFFFFF			guibg=#993333
hi rubySpaceError				gui=NONE		  guifg=#FFFFFF			guibg=#993333


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                           NO GUI                                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""
" Interface
""""""""""""""""""""""""
hi Cursor           			cterm=NONE          ctermfg=grey            ctermbg=red
hi Directory        			cterm=NONE          ctermfg=blue      		ctermbg=NONE
hi ErrorMsg         			cterm=NONE          ctermfg=white           ctermbg=darkred
hi MatchParen       			cterm=NONE          ctermfg=white           ctermbg=green
hi ModeMsg          			cterm=NONE          ctermfg=blue   		    ctermbg=NONE
hi MoreMsg          			cterm=NONE          ctermfg=darkgreen       ctermbg=NONE
hi NonText          			cterm=NONE          ctermfg=darkcyan        ctermbg=NONE
hi Normal						cterm=NONE			ctermfg=black			ctermbg=NONE
hi Question         			cterm=NONE          ctermfg=green           ctermbg=NONE
hi SpecialKey       			cterm=NONE          ctermfg=darkgreen       ctermbg=NONE
hi VertSplit        			cterm=NONE			ctermfg=black	        ctermbg=black
hi WarningMsg       			cterm=NONE          ctermfg=grey            ctermbg=darkred
hi WildMenu         			cterm=NONE          ctermfg=white           ctermbg=blue
hi LineNr           			cterm=NONE          ctermfg=grey	   		ctermbg=darkcyan


""""""
" Tabs
""""""""""""""""""""""""
hi TabLine          			cterm=NONE			ctermfg=darkcyan       	ctermbg=black
hi TabLineFill      			cterm=NONE      	ctermfg=darkcyan       	ctermbg=black
hi TabLineSel       			cterm=NONE 			ctermfg=white        	ctermbg=darkcyan


""""""
" Status
""""""""""""""""""""""""
hi StatusLine       			cterm=bold      	ctermfg=white	    	ctermbg=darkcyan
hi StatusLineNC     			cterm=NONE		    ctermfg=darkcyan       	ctermbg=black


""""""
" Completion
""""""""""""""""""""""""
hi Pmenu            			cterm=reverse	    ctermfg=black           ctermbg=darkcyan
hi PmenuSel         			cterm=bold          ctermfg=white           ctermbg=cyan


""""""
" Diff
""""""""""""""""""""""""
hi DiffAdd          			cterm=NONE          ctermfg=grey 	        ctermbg=green
hi DiffChange       			cterm=NONE          ctermfg=black           ctermbg=brown
hi DiffDelete       			cterm=NONE          ctermfg=grey	        ctermbg=red
hi DiffText         			cterm=NONE          ctermfg=red 	        ctermbg=brown


""""""
" Visual
""""""""""""""""""""""""
hi Visual          				cterm=NONE          ctermfg=grey        	ctermbg=blue
hi VisualNOS        			cterm=NONE			ctermfg=NONE            ctermbg=NONE


""""""
" Folding
""""""""""""""""""""""""
hi Folded           			cterm=NONE          ctermfg=grey   	    	ctermbg=blue
hi FoldColumn       			cterm=NONE          ctermfg=grey       		ctermbg=blue


""""""
" Search
""""""""""""""""""""""""
hi IncSearch        			cterm=NONE          ctermfg=grey            ctermbg=green
hi Search           			cterm=NONE          ctermfg=grey            ctermbg=green


""""""
" Main Highlighting
""""""""""""""""""""""""
hi Constant         			cterm=NONE          ctermfg=darkgreen       ctermbg=NONE
hi String           			cterm=NONE          ctermfg=darkcyan       	ctermbg=NONE
hi Character        			cterm=NONE          ctermfg=darkcyan        ctermbg=NONE
hi Number           			cterm=NONE          ctermfg=darkcyan      	ctermbg=NONE
hi Boolean          			cterm=NONE          ctermfg=darkcyan       	ctermbg=NONE
hi Float            			cterm=NONE          ctermfg=darkcyan       	ctermbg=NONE
hi Comment          			cterm=NONE          ctermfg=darkred         ctermbg=NONE

hi Identifier       			cterm=NONE          ctermfg=darkgrey       	ctermbg=NONE
hi Function         			cterm=NONE          ctermfg=black           ctermbg=NONE

hi Statement        			cterm=NONE          ctermfg=darkgrey     	ctermbg=NONE
hi Keyword          			cterm=NONE          ctermfg=darkgrey       	ctermbg=NONE

hi Conditional      			cterm=NONE          ctermfg=cyan     		ctermbg=NONE
hi Repeat           			cterm=NONE          ctermfg=cyan     		ctermbg=NONE
hi Label            			cterm=NONE          ctermfg=darkgrey   		ctermbg=NONE
hi Operator         			cterm=NONE          ctermfg=blue         	ctermbg=NONE

hi Exception        			cterm=NONE          ctermfg=darkgrey	    ctermbg=NONE

hi PreProc          			cterm=NONE          ctermfg=magenta     	ctermbg=NONE
hi Include          			cterm=NONE          ctermfg=magenta    	 	ctermbg=NONE
hi Define           			cterm=NONE          ctermfg=magenta    		ctermbg=NONE
hi Macro            			cterm=NONE          ctermfg=magenta     	ctermbg=NONE
hi PreCondit        			cterm=NONE          ctermfg=magenta     	ctermbg=NONE

hi Type             			cterm=NONE          ctermfg=green   	    ctermbg=NONE
hi StorageClass     			cterm=NONE          ctermfg=darkgreen      	ctermbg=NONE
hi Structure        			cterm=NONE          ctermfg=green       	ctermbg=NONE
hi Typedef          			cterm=NONE          ctermfg=green       	ctermbg=NONE

hi Special          			cterm=NONE          ctermfg=black           ctermbg=NONE
hi SpecialChar      			cterm=NONE          ctermfg=blue     	    ctermbg=NONE

hi Underlined       			cterm=underline     ctermfg=grey            ctermbg=NONE

hi Ignore          		 		cterm=NONE          ctermfg=darkgrey        ctermbg=NONE

hi Error            			cterm=NONE          ctermfg=grey            ctermbg=darkred

hi Todo             			cterm=NONE          ctermfg=grey            ctermbg=darkgreen


""""""
" HTML
""""""""""""""""""""""""
hi Title            			cterm=NONE          ctermfg=darkgrey	    ctermbg=NONE
hi htmlItalic					cterm=NONE		  	ctermfg=NONE			ctermbg=NONE
hi htmlTag		    			cterm=NONE          ctermfg=darkgrey       	ctermbg=NONE
hi htmlEndTag					cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi htmlTagError					cterm=NONE		  	ctermfg=grey			ctermbg=darkred
hi htmlTagName     		 		cterm=NONE		    ctermfg=blue			ctermbg=NONE
hi htmlSpecialTagName			cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi htmlArg          			cterm=NONE		    ctermfg=darkgrey 		ctermbg=NONE
hi htmlString					cterm=NONE		  	ctermfg=brown			ctermbg=NONE
hi htmlComment					cterm=NONE		  	ctermfg=darkred			ctermbg=NONE
hi htmlCommentPart				cterm=NONE		  	ctermfg=darkred			ctermbg=NONE
hi htmlCommentError				cterm=NONE		  	ctermfg=white			ctermbg=red
hi htmlEvent					cterm=NONE		  	ctermfg=blue			ctermbg=NONE


""""""
" XML
""""""""""""""""""""""""
hi xmlTodo						cterm=NONE			ctermfg=white			ctermbg=red
hi xmlTag						cterm=NONE			ctermfg=darkgrey		ctermbg=NONE
hi xmlTagName					cterm=NONE			ctermfg=blue			ctermbg=NONE
hi xmlEndTag					cterm=NONE			ctermfg=darkgrey		ctermbg=NONE
hi xmlEntity					cterm=NONE			ctermfg=darkcyan		ctermbg=NONE
hi xmlEntityPunct				cterm=NONE			ctermfg=darkcyan		ctermbg=NONE

hi xmlAttrib					cterm=NONE			ctermfg=black			ctermbg=NONE

hi xmlString					cterm=NONE			ctermfg=brown			ctermbg=NONE
hi xmlComment					cterm=NONE			ctermfg=darkred			ctermbg=NONE
hi xmlCommentStart				cterm=NONE			ctermfg=darkred			ctermbg=NONE
hi xmlCommentPart				cterm=NONE			ctermfg=darkred			ctermbg=NONE
hi xmlCommentError				cterm=NONE			ctermfg=white			ctermbg=darkred
hi xmlError						cterm=NONE			ctermfg=white			ctermbg=darkred


""""""
" JavaScript
""""""""""""""""""""""""
hi javaScript					cterm=NONE		  	ctermfg=black			ctermbg=NONE
hi javaScriptComment			cterm=NONE		  	ctermfg=darkred			ctermbg=NONE
hi javaScriptLineComment		cterm=NONE		  	ctermfg=darkred			ctermbg=NONE
hi javaScriptStringD			cterm=NONE		  	ctermfg=brown			ctermbg=NONE
hi javaScriptNumber				cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi javaScriptConditional		cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi javaScriptRepeat				cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi javaScriptBranch				cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi javaScriptStatement			cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi javaScriptFunction			cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi javaScriptBraces				cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi javaScriptNull				cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi javaScriptBoolean			cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi javaScriptRegexpString		cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi javaScriptLabel				cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi javaScriptMessage			cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi javaScriptMember				cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi javaScriptIdentifier			cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE


""""""
" CSS
""""""""""""""""""""""""
hi cssComment					cterm=NONE			ctermfg=darkred			ctermbg=NONE
hi cssTagName					cterm=NONE			ctermfg=blue			ctermbg=NONE
hi cssCommonAttr				cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssFontAttr					cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssColorAttr					cterm=NONE			ctermfg=darkgreen		ctermbg=NONE
hi cssRenderProp				cterm=NONE			ctermfg=darkgreen		ctermbg=NONE
hi cssGeneratedContentProp		cterm=NONE			ctermfg=darkgreen		ctermbg=NONE
hi cssBoxAttr					cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssPseudoClass				cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssPseudoClassId				cterm=NONE			ctermfg=magenta			ctermbg=NONE
hi cssColor						cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssURL						cterm=NONE			ctermfg=brown			ctermbg=NONE
hi cssIdentifier				cterm=NONE			ctermfg=blue			ctermbg=NONE
hi cssBraces					cterm=NONE			ctermfg=blue			ctermbg=NONE
hi cssString					cterm=NONE			ctermfg=blue			ctermbg=NONE
hi cssRenderAttr				cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssUIAttr					cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssValueLength				cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssValueNumber				cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssFunctionName				cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssBraceError				cterm=NONE			ctermfg=white			ctermbg=red
hi cssMediaComma				cterm=NONE			ctermfg=black			ctermbg=NONE
hi cssClassName					cterm=NONE			ctermfg=blue			ctermbg=NONE


""""""
" PHP
""""""""""""""""""""""""
hi phpComment					cterm=NONE		  	ctermfg=darkred			ctermbg=NONE
hi phpBoolean					cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi phpStructure					cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi phpStringSingle				cterm=NONE		  	ctermfg=brown			ctermbg=NONE
hi phpStringDouble				cterm=NONE		  	ctermfg=brown			ctermbg=NONE
hi phpNumber					cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi phpFloat						cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi phpMethods					cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi phpFunctions					cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi phpRepeat					cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi phpConditional				cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi phpLabel						cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi phpStatement					cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi phpKeyword					cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi phpType						cterm=NONE		  	ctermfg=black			ctermbg=NONE
hi phpInclude					cterm=NONE		  	ctermfg=green			ctermbg=NONE
hi phpDefine					cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi phpParent					cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi phpOperator					cterm=NONE		  	ctermfg=black			ctermbg=NONE
hi phpVarSelector				cterm=NONE		  	ctermfg=black			ctermbg=NONE
hi phpIdentifier				cterm=NONE		  	ctermfg=black			ctermbg=NONE


""""""
" C
""""""""""""""""""""""""
hi cFormat						cterm=NONE		  	ctermfg=magenta			ctermbg=NONE
hi cCppString					cterm=NONE		  	ctermfg=brown			ctermbg=NONE
hi cCommentStart				cterm=NONE		  	ctermfg=darkred			ctermbg=NONE
hi cLabel						cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi cUserLabel					cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi cConditional					cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi cRepeat						cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi cCharacter					cterm=NONE		  	ctermfg=brown			ctermbg=NONE
hi cSpecialCharacter			cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi cNumber						cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi cOctal						cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi cOctalZero					cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi cFloat						cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi cOctalError					cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cParenError					cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cErrInParen					cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cErrInBracket				cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cCommentError				cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cCommentStartError			cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cSpaceError					cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cSpecialError				cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cCurlyError					cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cOperator					cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi cStorageClass				cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi cInclude						cterm=NONE		  	ctermfg=green			ctermbg=NONE
hi cDefine						cterm=NONE		  	ctermfg=black			ctermbg=NONE
hi cIncluded					cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi cError						cterm=NONE		  	ctermfg=white			ctermbg=darkred
hi cStatement					cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi cPreCondit					cterm=NONE		  	ctermfg=black			ctermbg=NONE
hi cType						cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi cConstant					cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi cString						cterm=NONE		  	ctermfg=brown			ctermbg=NONE
hi cComment						cterm=NONE		  	ctermfg=darkred			ctermbg=NONE
hi cSpecial						cterm=NONE		  	ctermfg=blue			ctermbg=NONE


""""""
" Python
""""""""""""""""""""""""
hi pythonBuiltin				cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi pythonStatement				cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi pythonConditional			cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi pythonRepeat					cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi pythonOperator				cterm=NONE		  	ctermfg=darkgrey		ctermbg=NONE
hi pythonInclude				cterm=NONE		  	ctermfg=green			ctermbg=NONE
hi pythonFunction				cterm=NONE		  	ctermfg=magenta			ctermbg=NONE
hi pythonComment				cterm=NONE		  	ctermfg=darkred			ctermbg=NONE
hi pythonTodo					cterm=NONE		  	ctermfg=white			ctermbg=red
hi pythonString					cterm=NONE		  	ctermfg=brown			ctermbg=NONE
hi pythonRawString				cterm=NONE		  	ctermfg=brown			ctermbg=NONE
hi pythonNumber					cterm=NONE		  	ctermfg=darkgreen		ctermbg=NONE
hi pythonDoctest				cterm=NONE		  	ctermfg=blue			ctermbg=NONE
hi pythonDoctestValue			cterm=NONE		  	ctermfg=blue			ctermbg=NONE


""""""
" Ruby
""""""""""""""""""""""""
hi rubyClass					cterm=NONE			ctermfg=green			ctermbg=NONE
hi rubyModule					cterm=NONE			ctermfg=magenta			ctermbg=NONE
hi rubyDefine					cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyFunction					cterm=NONE			ctermfg=magenta			ctermbg=NONE
hi rubyConditional				cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyConditionalModifier		cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyRepeat					cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyRepeatModifier			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyOptionalDo				cterm=NONE			ctermfg=red				ctermbg=NONE
hi rubyControl					cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyInclude					cterm=NONE			ctermfg=green			ctermbg=NONE
hi rubyInteger					cterm=NONE			ctermfg=darkgreen		ctermbg=NONE
hi rubyASCIICode				cterm=NONE			ctermfg=darkred			ctermbg=NONE
hi rubyFloat					cterm=NONE			ctermfg=darkgreen		ctermbg=NONE
hi rubyBoolean					cterm=NONE			ctermfg=darkgreen		ctermbg=NONE
hi rubyException				cterm=NONE			ctermfg=blue			ctermbg=NONE

hi rubyClassVariable			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyConstant					cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyGlobalVariable			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyInstanceVariable			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyPseudoVariable			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyBlockParameter			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyPredefinedIdentifier		cterm=NONE			ctermfg=darkmagenta		ctermbg=NONE
hi rubyPredefinedConstant		cterm=NONE			ctermfg=darkmagenta		ctermbg=NONE
hi rubyPredefinedVariable		cterm=NONE			ctermfg=darkmagenta		ctermbg=NONE
hi rubySymbol					cterm=NONE			ctermfg=darkgrey		ctermbg=NONE
hi rubyAccess					cterm=NONE			ctermfg=darkgrey		ctermbg=NONE

hi rubyComment					cterm=NONE			ctermfg=darkred			ctermbg=NONE
hi rubyTodo						cterm=NONE			ctermfg=white			ctermbg=darkred

hi rubyStringEscape				cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyInterpolationDelimiter	cterm=NONE			ctermfg=darkgrey		ctermbg=NONE
hi rubySymbolDelimiter			cterm=NONE			ctermfg=darkgrey		ctermbg=NONE
hi rubyStringDelimiter			cterm=NONE			ctermfg=brown			ctermbg=NONE
hi rubyString					cterm=NONE			ctermfg=brown			ctermbg=NONE
hi rubyRegexpDelimiter			cterm=NONE			ctermfg=cyan			ctermbg=NONE
hi rubyRegexpEscape				cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyRegexpQuantifier			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyRegexpAnchor				cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyRegexpDot				cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyRegexpCharClass			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyRegexpSpecial			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyRegexpComment			cterm=NONE			ctermfg=blue			ctermbg=NONE
hi rubyRegexp					cterm=NONE			ctermfg=blue			ctermbg=NONE

hi rubyInvalidVariable			cterm=NONE			ctermfg=white			ctermbg=darkred
hi rubyError					cterm=NONE			ctermfg=white			ctermbg=darkred
hi rubySpaceError				cterm=NONE			ctermfg=white			ctermbg=darkred


"vim: sw=4

