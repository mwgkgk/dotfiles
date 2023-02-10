function! ftdetect#detect_empty()
    if getline(1) =~# '#!\/bin\/dash'
        setfiletype sh
    elsei getline(1) =~# '#!\/usr\/bin\/sbcl --script'
        setfiletype lisp
    elsei getline(1) =~# '#!\/usr\/bin\/env ruby'
        setfiletype ruby
    endif
endfunction

" Restore help window look and functionality when loading a session saved
" with sessionoptions-=options.
function! ftdetect#set_help_status()
    if &filetype ==# 'help'
        " These two lines do not work for buffers opened in another tab:
        setlocal nonumber
        setlocal nolist

        " The <buffer> autocmd is assigned to the buffer number, which will
        " change as soon as we navigate to a tag, or another :help is invoked.
        autocmd settings BufEnter,BufLeave <buffer> setl nolist nonumber
        " See register_for_one_execution_at() for an example of self-cleaning
        " autocmd. The overhead does not seem practical in this case: every
        " invocation has to have a unique augroup.
        " https://github.com/LucHermitte/lh-vim-lib#miscellaneous-functions

        " The options were reverse engineered using the `:setl` command.
        setlocal scroll=50 shiftwidth=4
        setlocal nobuflisted
        setlocal keywordprg=:help

        " This is the key option that makes it the designated window for :help
        " commands. If multiple buffers of this buftype exist within a tab,
        " the focused one will display the :help; if none are focused, the
        " first one by winnr(). Source: observation.
        setlocal buftype=help

        " Ordering doesn't matter, choosing to end with this for aesthetic
        " reasons.
        setlocal nomodifiable
    endif
endfunction
