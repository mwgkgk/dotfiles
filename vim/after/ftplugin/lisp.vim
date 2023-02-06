setlocal textwidth=79
setlocal formatoptions=tcqj
setlocal tabstop=2
setlocal shiftwidth=2

setlocal iskeyword+=&

setlocal lispwords+=ctypecase,defsystem,with-client-socket,test,block
" alexandria
setlocal lispwords+=when-let,if-let
" My things
setlocal lispwords+=defproduct

setlocal colorcolumn=0

" Vim recognizes .jl as lisp, and does not clean up buffer maps.
" This fix is not Julia-specific, because we should clean up buffer maps in
" any case.
" Related reading:
" https://github.com/JuliaEditorSupport/julia-vim/issues/38
" https://github.com/JuliaEditorSupport/julia-vim/issues/64
" ~/.vim/plugs/julia-vim/ftdetect/julia.vim
" I've opened an issue on Vim issue tracker:
" Reason being that it's easier to edit /usr/share/vim/vim82/filetype.vim than
" to fuck with Lisp plugins that should not have been loaded in the first
" place.
" https://github.com/vim/vim/issues/6178
let b:undo_ftplugin = 'setlocal comments< define< formatoptions< iskeyword< lisp< colorcolumn<'
            \ . '| mapclear <buffer>'
