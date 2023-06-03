
"
"
" Help
"

nnoremap H :FzfHelptags<CR>
nnoremap sh :FzfHelptags<CR>

"
"
" Files
"

" Files in cwd:
nnoremap ss :FzfFilesWithPreview .<CR>

" Files in parent dir:
nnoremap sw :FzfFilesWithPreview ../<CR>

" Files in current buffer's dir:
nnoremap se :FzfFilesWithPreview <C-R>=expand('%:p:h')<CR><CR>

" Files in current buffer's parent dir:
nnoremap sr :FzfFilesWithPreview <C-R>=expand('%:p:h:h')<CR><CR>

" Files in current buffer's parent dir's parent dir:
nnoremap s2r :FzfFilesWithPreview <C-R>=expand('%:p:h:h:h')<CR><CR>
nnoremap s3r :FzfFilesWithPreview <C-R>=expand('%:p:h:h:h:h')<CR><CR>
nnoremap s4r :FzfFilesWithPreview <C-R>=expand('%:p:h:h:h:h:h')<CR><CR>
nnoremap s5r :FzfFilesWithPreview <C-R>=expand('%:p:h:h:h:h:h:h')<CR><CR>


" Select from recently opened files:
nnoremap s' :FzfHistory<CR>

" Select from arglist (see ./commands.vim):
nnoremap s. :FzfArgs<CR>

"
"
" Buffers
"

" Switch to a buffer (including by number):
nnoremap s<Space> :FzfBuffers<CR>

" Set filetype:
nnoremap st :FzfFiletypes<CR>

"
"
" Tags
"

" Tags from &tags:
nnoremap sd :FzfTags<CR>

" Buffer tags:
nnoremap sz :FzfBTags<CR>

"
"
" Marks
"

nnoremap sm :FzfMarks<CR>

"
"
" Navigation
"

" Select from lines in current buffer & jump:
nnoremap sj :FzfBLines<CR>

" Select from search history & search:
nnoremap s/ :FzfHistory/<CR>

"
"
" Grep
"

" Fuzzy ripgrep in cwd:
noremap sas :Rg .<CR>

" Fuzzy ripgrep in parent dir:
noremap saw :Rg ../<CR>

" Fuzzy ripgrep in current file's dir:
noremap sae :Rg <C-r>=expand('%:p:h')<CR><CR>

" Fuzzy ripgrep in parent dir to the current file:
noremap sar :Rg <C-r>=expand('%:p:h:h')<CR><CR>

"
"
" Git
"

" Select from git tracked files in current dir:
nnoremap sF :FzfGFiles<CR>

" Select from  untracked + unstaged files in current dir:
nnoremap sf :FzfGitModified<CR>

" All commits:
nnoremap sl :FzfCommits<CR>

" Current buffer commits:
nnoremap sL :FzfBCommits<CR>

" Browse git hooks:
nnoremap sgh :FzfFilesWithPreview ./.git/hooks/<CR>

" Select branch to checkout
nnoremap <silent> sb :call fzf#run(fzf#wrap({
            \ 'source': systemlist('git branch'),
            \ 'sink': function('git#branch#checkout')
            \ }))<CR>

"
"
" Commands
"

" Prepop from command history:
nnoremap s; :FzfHistory:<CR>

"
"
" Editing
"

" Execute a fuzzy-selected mapping:
nnoremap sM :FzfMaps<CR>

" Prepopulate with a fuzzy-selected command:
nnoremap s: :FzfCommands<CR>

" Insert a snippet:
nnoremap s<Tab> :FzfSnippets<CR>
inoremap <C-g><Tab> <C-o>:FzfSnippets<CR>

" Replace with skeleton:
nnoremap <silent> sk :call fzf#run(fzf#wrap(fzf#vim#with_preview({
            \ 'source': split(globpath(&rtp, 'skeletons/*')),
            \ 'sink': '%!cat'
            \ })))<CR>

" Edit a skeleton:
nnoremap <silent> sK :call fzf#run(fzf#wrap(fzf#vim#with_preview({
            \ 'source': split(globpath(&rtp, 'skeletons/*')),
            \ })))<CR>

" Edit ftplugins for current extension:
nnoremap <silent> sT :call fzf#run(fzf#wrap(fzf#vim#with_preview({
            \ 'source': split(globpath(&rtp, 'ftplugin/**/' . &ft . '/*')) + split(globpath(&rtp, 'ftplugin/**/' . &ft . '.vim')),
            \ })))<CR>

" Select from all ftplugins:
nnoremap <silent> svT :call fzf#run(fzf#wrap(fzf#vim#with_preview({
            \ 'source': split(globpath(&rtp, 'ftplugin/**/*.vim')),
            \ })))<CR>

" Edit syntax plugins for current extension:
nnoremap <silent> sY :call fzf#run(fzf#wrap(fzf#vim#with_preview({
            \ 'source': split(globpath(&rtp, 'syntax/**/' . &ft . '/*')) + split(globpath(&rtp, 'syntax/**/' . &ft . '.vim')),
            \ })))<CR>

" Select from all syntax plugins:
nnoremap <silent> svY :call fzf#run(fzf#wrap(fzf#vim#with_preview({
            \ 'source': split(globpath(&rtp, 'syntax/**/*.vim')),
            \ })))<CR>
