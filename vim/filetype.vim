augroup filetypedetect
    au! BufRead,BufNewFile *.txt setfiletype text
    au! BufRead,BufNewFile *.min setfiletype min
augroup END

augroup filetypedetect
    " removes current htmldjango detection located at $VIMRUNTIME/filetype.vim
    au! BufNewFile,BufRead *.html
    au BufNewFile,BufRead *.html call FThtml()

    func! FThtml()
        let n = 1
        while n < 10 && n < line("$")
            if getline(n) =~ '\<DTD\s\+XHTML\s'
                setf xhtml
                return
            endif
            if getline(n) =~ '{%\|{{\|{#'
                setf htmldjango
                return
            endif
            let n = n + 1
        endwhile
        setf html
    endfunc
augroup END
