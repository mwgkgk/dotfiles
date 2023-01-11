let g:ale_linters = {
      \ 'haskell': ['stack-ghc'],
      \ 'perl'   : ['perl', 'perlcritic'],
      \ 'rust'   : ['cargo'],
      \ 'elixir' : ['credo', 'elixir-ls', 'mix'],
      \ }
let g:ale_tcl_nagelfar_executable = 'nagelfar'
let g:ale_sign_error = '>'
let g:ale_sign_warning = '!'
let g:ale_lint_on_save = 1
let g:ale_set_highlights = 0
" Disable virtual text
let g:ale_virtualtext_cursor=0
