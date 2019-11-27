" Snippet helper to deal with auto-closing brackets when triggered from an
" empty line. We wrap the `normal! 0a` in a function because ultisnips expects
" a function or a variable from inline vimscript in snippets. Returns empty
" string because inline vimscript is expected to return a value.
function! helpers#0a()
    normal! 0a
    return ''
endfunction

function! helpers#pluralize(word, count)
    let l:plural = ""
    if a:count > 1
        let l:plural = "s"
    endif
    return a:count . " " .  a:word . l:plural
endfunction
