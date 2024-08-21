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

let cpp_opts = '-std=c++20 -Wall -Wextra'
let g:ale_linters = { 'cpp': ['cc', 'gcc', 'clang'] }
let g:ale_cpp_cc_options    = cpp_opts
let g:ale_cpp_gcc_options   = cpp_opts
let g:ale_cpp_clang_options = cpp_opts
