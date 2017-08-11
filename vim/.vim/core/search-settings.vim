" highlight search matches
set hlsearch

" while typing search pattern, show intermediate matches
set incsearch

" ignore case for searches except if the pattern has uppercase characters
set ignorecase
set smartcase

" invert the meaning of the g[lobal] flag for substitutions
" works on a per-line basis
set gdefault

" use very magic regexes by default
" ie. regex chars have meaning without escaping and lose meaning when escaped
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v

" clear highlight mapping
nnoremap <silent> <leader>/ :nohlsearch<cr>
