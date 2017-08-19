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

" * and # should always be case sensitive
" and also not jump forward
" BUG: if the match isn't a keyword ('iskeyword') then the \< and \> makes the
"      match not work, but if you remove \< and \> then the keyword matches can
"      match within bigger words (eg: bcd will match in abcdef)
nnoremap * :execute '/\C\V\<' . escape(expand('<cword>'), '/?\') . '\>' <cr>N
nnoremap # :execute '?\C\V\<' . escape(expand('<cword>'), '/?\') . '\>' <cr>N
