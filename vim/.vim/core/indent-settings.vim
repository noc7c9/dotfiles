" width of an indent level
set shiftwidth=4
" width of displayed tab
set tabstop=4
" width of a tab for editing
set softtabstop=4

" > and < shift to closest indent level
set shiftround

" always use tabs
set expandtab
" if for whatever reason expandtab is off (makefiles?) obey indent width
set smarttab

" follow indent level from previous line
set autoindent

" don't try to be smart by default
" language specific settings can override this
set nosmartindent
set nocindent

" when smart indent is on (typical for c-like languages)
" don't treat automatically put # on the first column, follow indent level
inoremap # X#
