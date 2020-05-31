setlocal textwidth=79
setlocal formatoptions=tcqj
setlocal tabstop=2
setlocal shiftwidth=2

" Vim recognizes .jl as lisp, and does not clean up buffer maps.
" This fix is not Julia-specific, because we should clean up buffer maps in
" any case.
" Related reading:
" https://github.com/JuliaEditorSupport/julia-vim/issues/38
" https://github.com/JuliaEditorSupport/julia-vim/issues/64
" ~/.vim/plugs/julia-vim/ftdetect/julia.vim
let b:undo_ftplugin = 'setlocal comments< define< formatoptions< iskeyword< lisp<'
            \ . '| mapclear <buffer>'
