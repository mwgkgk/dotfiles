let g:formatdef_elmformat = '"elm-format --upgrade --yes --stdin"'
let g:formatters_elm = ['elmformat']
let g:formatdef_hindent = '"hindent"'
let g:formatters_haskell = ['hindent']
let g:formatters_idris = ['hindent']
let g:formatdef_dhallformat = '"dhall-format"'
let g:formatters_dhall = ['dhallformat']
let g:formatdef_shfmt = '"shfmt -i 4 -p -bn -s"'
let g:formatters_sh = ['shfmt']
let g:formatdef_rustfmt = '"rustfmt --unstable-features"'
let g:formatters_rust = ['rustfmt']
let g:formatdef_ocamlformat = '"ocamlformat - --profile=default --name ".expand("%")'
let g:formatters_ocaml = ['ocamlformat']
let g:formatdef_perltidy = '"perltidy -ce -pt=2 -nasc"'
let g:formatters_perl = ['perltidy']
let g:formatdef_perl6tidy = '"perl6-tidy --indent-style=tab"'
let g:formatters_perl6 = ['perl6tidy']
let g:formatdef_dfmt = '"dfmt --brace_style=otbs"'
let g:formatters_d = ['dfmt']
let g:formatdef_jsfmt = '"jsfmt"'
let g:formatters_js = ['jsfmt']
let g:formatters_python = ['black']
