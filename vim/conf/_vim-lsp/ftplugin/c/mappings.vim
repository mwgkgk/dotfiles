nnoremap <buffer> <C-g> :LspHover<CR>
nnoremap <buffer> <Leader><C-g> :LspPeekDefinition<CR>

nnoremap <buffer> <Leader><Tab> :LspWorkspaceSymbol<CR>

nnoremap <buffer> <Leader>[ :LspDefinition<CR>
nnoremap <buffer> <Leader>] :LspReferences<CR>

nnoremap <buffer> <M-.> :LspDeclaration<CR>

nnoremap <buffer> <Leader><LocalLeader> :LspCodeAction<CR>
nnoremap <buffer> <LocalLeader>R :LspRename<CR>
