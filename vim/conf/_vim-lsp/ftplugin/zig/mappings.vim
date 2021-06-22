" ||
" || Go-to-source
" ||

" Temporarily shadow tags
nnoremap <silent> <buffer> <C-]> :LspDeclaration<CR>

nnoremap <buffer> <Leader><Tab> :LspWorkspaceSymbol<CR>

nnoremap <buffer> <Leader>[ :LspDefinition<CR>
nnoremap <buffer> <Leader>] :LspReferences<CR>

" ||
" || Hover
" ||

nnoremap <buffer> <C-g> :LspHover<CR>
nnoremap <buffer> <Leader><C-g> :LspPeekDefinition<CR>

" ||
" || Code actions
" ||

nnoremap <buffer> <Leader><LocalLeader> :LspCodeAction<CR>
nnoremap <buffer> <LocalLeader>R :LspRename<CR>
