" function! ale_linters#lisp#crow#Handle(buffer, lines)
"   let l:output = []
"   let l:pattern = '\v^(\d+)\|(\d+)\|(error|warning)\|(.*)$'
"   let l:i = 0
"   for l:match in ale#util#GetMatches(a:lines, l:pattern)
"     let l:i += 1
"     " echom l:i . ' match:' l:match[0]
"     let l:item = {
"           \   'lnum': l:match[2] + 0,
"           \   'col': l:match[3] + 0,
"           \   'vcol': 1,
"           \   'text': l:match[4],
"           \   'code': l:match[5],
"           \   'type': 'W',
"           \}
"     call add(l:output, l:item)
"   endfor
"   return l:output
" endfunction

function! ale_linters#lisp#crow#Handle(buffer, lines)
  let l:output = []
  let l:pattern = '\v^(\d+)\|(\d+)\|(error|warning)\|(.*)$'
  for l:match in ale#util#GetMatches(a:lines, l:pattern)
    let l:item = {
          \ 'lnum': str2nr(l:match[1]),
          \ 'col': str2nr(l:match[2]) + 1,
          \ 'vcol': 1,
          \ 'text': l:match[4],
          \ 'type': l:match[3][0],
          \ }
    call add(l:output, l:item)
  endfor
  return l:output
endfunction
call ale#linter#Define('lisp', {
\   'name': 'crow',
\   'executable': 'crow',
\   'command': 'crow %s',
\   'callback': 'ale_linters#lisp#crow#Handle',
\})
