" adds :Bdelete command that closes buffers and files without changing layout
Plug 'moll/vim-bbye'

" better join/split maps
" use gJ/gS to join/split code from multiline to singleline and back
Plug 'AndrewRadev/splitjoin.vim'

" comment toggle maps
Plug 'tpope/vim-commentary'

" word manipulation commands
" as well as case (eg: snake -> camel) changing mappings
Plug 'tpope/tpope-vim-abolish'

" git wrapper
Plug 'tpope/vim-fugitive'

" create visual region split windows
Plug 'wellle/visual-split.vim'

" unix command helpers
Plug 'tpope/vim-eunuch'
" alternative to the :Delete (vim-eunuch) that doesn't change window layout
command! -bang Del Unlink<bang>|Bdelete
