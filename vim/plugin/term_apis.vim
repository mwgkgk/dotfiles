function! Tapi_Space(bufnum, arglist)
    if len(a:arglist) == 1
        let l:arg = a:arglist[0]

        if l:arg ==# 'TermClose'
            call term_sendkeys(a:bufnum, "\<C-d>")
        elseif l:arg ==# 'TermCloseResizePrevious'
            " Historical context: an attempt to implement ReplaceTerm was
            " made, to alleviate the blinking introduced by the implementation
            " below. The attempted approach seems to require async dispatch,
            " throwing E937: Attempt to delete a buffer that is in use, when
            " trying to both sendkeys <C-d> and split a buffer by name in the
            " same go. How is that approach different from dropping separately
            " and then sending <C-d> and reopening the buffer in the same
            " Tapi_Space branch, is unclear.

            call term_sendkeys(a:bufnum, "\<C-d>")

            wincmd q
            vs #
        else
            exec 'wincmd ' . a:arglist[0]
        endif
    endif
endfunction
