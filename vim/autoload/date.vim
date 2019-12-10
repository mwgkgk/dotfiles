" NB: Date in seconds returned by localtime() is already in UTC format,
" however there is no way to specify a timezone for Vim's built in strftime().
" Rather than outsourcing the operations we add/subtract the timezone offset.
function! date#seconds_to_utc(seconds)
    let l:raw_offset = strftime('%z', a:seconds)

    let l:offset_direction = l:raw_offset[:0]
    let l:offset_hours = l:raw_offset[1:2]
    let l:offset_minutes = l:raw_offset[3:4]

    let l:offset = l:offset_hours * 3600 + l:offset_minutes * 60
    let l:offset = l:offset_direction ==# '+' ? l:offset : 0 - l:offset

    return a:seconds - l:offset
endfunction

function! date#echo_date(...)
    if (a:0 == 1)
        if empty(a:1)
            echo systemlist('date')[0]
        else
            echo systemlist("date --date='" .
                    \ substitute(a:1, '^in\s*', '', '') . "'")[0]
        endif
    endif
endfunc
