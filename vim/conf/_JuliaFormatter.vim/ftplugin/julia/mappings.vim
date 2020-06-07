" normal mode mapping
nnoremap <buffer> <Space>f :<C-u>call JuliaFormatter#Format(0)<CR>
" visual mode mapping
vnoremap <buffer> <LocalLeader>f :<C-u>call JuliaFormatter#Format(1)<CR>
