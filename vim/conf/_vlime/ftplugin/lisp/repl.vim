" Auto-connect to StumpWM:
if bufname() =~# 'stumpwm/config$'
    if ! exists('b:vlime_auto_connection')
        let b:vlime_auto_connection = vlime#plugin#ConnectREPL('127.0.0.1',
                    \ 44820, '', '', 'StumpWM connection')
    endif
endif
