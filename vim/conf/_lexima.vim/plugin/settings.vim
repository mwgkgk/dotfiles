" Disable all rules and add rules by hand per-filetype. The other way to
" achieve per-filetype rules is to use the defaults and set b:lexima_disabled
" per filetype. This is the more sensible of the two.
let g:lexima_no_default_rules = 1

" Actually moving the rules to ftplugin/ makes little sense as rules are
" global.

" lexima.vim/autoload/lexima.vim

let g:_lexima#default_rules = [
\ {'char': '(', 'input_after': ')'},
\ {'char': '(', 'at': '\\\%#'},
\ {'char': ')', 'at': '\%#)', 'leave': 1},
\ {'char': '<BS>', 'at': '(\%#)', 'delete': 1},
\ {'char': '{', 'input_after': '}'},
\ {'char': '}', 'at': '\%#}', 'leave': 1},
\ {'char': '<BS>', 'at': '{\%#}', 'delete': 1},
\ {'char': '[', 'input_after': ']'},
\ {'char': '[', 'at': '\\\%#'},
\ {'char': ']', 'at': '\%#]', 'leave': 1},
\ {'char': '<BS>', 'at': '\[\%#\]', 'delete': 1},
\ ]

let g:_lexima#default_rules += [
\ {'char': '"', 'input_after': '"'},
\ {'char': '"', 'at': '\%#"', 'leave': 1},
\ {'char': '"', 'at': '\\\%#'},
\ {'char': '"', 'at': '^\s*\%#', 'filetype': ['vim', 'mj']},
\ {'char': '"', 'at': '\%#\s*$', 'filetype':['vim', 'mj']},
\ {'char': '<BS>', 'at': '"\%#"', 'delete': 1},
\ {'char': '"', 'at': '""\%#', 'input_after': '"""'},
\ {'char': '"', 'at': '\%#"""', 'leave': 3},
\ {'char': '<BS>', 'at': '"""\%#"""', 'input': '<BS><BS><BS>', 'delete': 3},
\ {'char': "'", 'input_after': "'"},
\ {'char': "'", 'at': '\%#''', 'leave': 1},
\ {'char': "'", 'at': '\w\%#''\@!'},
\ {'char': "'", 'at': '\\\%#'},
\ {'char': "'", 'at': '\\\%#', 'leave': 1, 'filetype': ['vim', 'sh', 'csh', 'ruby', 'tcsh', 'zsh']},
\ {'char': "'", 'filetype': ['haskell', 'lisp', 'lfe', 'scheme', 'clojure', 'ocaml', 'reason', 'scala', 'rust', 'jiv', 'mj']},
\ {'char': '<BS>', 'at': "'\\%#'", 'delete': 1},
\ {'char': "'", 'at': "''\\%#", 'input_after': "'''"},
\ {'char': "'", 'at': "\\%#'''", 'leave': 3},
\ {'char': '<BS>', 'at': "'''\\%#'''", 'input': '<BS><BS><BS>', 'delete': 3},
\ {'char': '`', 'input_after': '`'},
\ {'char': '`', 'at': '\%#`', 'leave': 1},
\ {'char': '<BS>', 'at': '`\%#`', 'delete': 1},
\ {'char': '`', 'filetype': ['ocaml', 'reason', 'lfe', 'mj', 'jiv']},
\ {'char': '`', 'at': '``\%#', 'input_after': '```'},
\ {'char': '`', 'at': '\%#```', 'leave': 3},
\ {'char': '<BS>', 'at': '```\%#```', 'input': '<BS><BS><BS>', 'delete': 3},
\ ]

let g:_lexima#newline_rules = [
\ {'char': '<CR>', 'at': '(\%#)', 'input_after': '<CR>'},
\ {'char': '<CR>', 'at': '(\%#$', 'input_after': '<CR>)', 'except': '\C\v^(\s*)\S.*%#\n%(%(\s*|\1\s.+)\n)*\1\)'},
\ {'char': '<CR>', 'at': '{\%#}', 'input_after': '<CR>'},
\ {'char': '<CR>', 'at': '{\%#$', 'input_after': '<CR>}', 'except': '\C\v^(\s*)\S.*%#\n%(%(\s*|\1\s.+)\n)*\1\}'},
\ {'char': '<CR>', 'at': '\[\%#]', 'input_after': '<CR>'},
\ {'char': '<CR>', 'at': '\[\%#$', 'input_after': '<CR>]', 'except': '\C\v^(\s*)\S.*%#\n%(%(\s*|\1\s.+)\n)*\1\]'},
\ ]

let g:_lexima#space_rules = [
\ {'char': '<Space>', 'at': '(\%#)', 'input_after': '<Space>'},
\ {'char': ')', 'at': '\%# )', 'leave': 2},
\ {'char': '<BS>', 'at': '( \%# )', 'delete': 1},
\ {'char': '<Space>', 'at': '{\%#}', 'input_after': '<Space>'},
\ {'char': '}', 'at': '\%# }', 'leave': 2},
\ {'char': '<BS>', 'at': '{ \%# }', 'delete': 1},
\ {'char': '<Space>', 'at': '\[\%#]', 'input_after': '<Space>'},
\ {'char': ']', 'at': '\%# ]', 'leave': 2},
\ {'char': '<BS>', 'at': '\[ \%# ]', 'delete': 1},
\ ]

for rule in g:_lexima#default_rules
  call lexima#add_rule(rule)
endfor

for rule in g:_lexima#newline_rules
  call lexima#add_rule(rule)
endfor

for rule in g:_lexima#space_rules
  call lexima#add_rule(rule)
endfor
