" adds :Bdelete command that closes buffers and files without changing layout
Plug 'moll/vim-bbye'

" alignment
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" set fdm=manual while aligning so that folds aren't recalculated
let g:easy_align_bypass_fold = 1

" better join/split maps
" use gJ/gS to join/split code from multiline to singleline and back
Plug 'AndrewRadev/splitjoin.vim'

" comment toggle maps
Plug 'tpope/vim-commentary'

" visualized undo tree
Plug 'sjl/gundo.vim'
" silent! is necessary to avoid the 'opened buffer' messages
noremap <silent> <leader>u :<c-u>silent! GundoToggle<cr>

" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'

" word manipulation commands
" as well as case (eg: snake -> camel) changing mappings
Plug 'tpope/tpope-vim-abolish'

" git wrapper
Plug 'tpope/vim-fugitive'

" pseudo-capslock
Plug 'tpope/vim-capslock'

" create visual region split windows
Plug 'wellle/visual-split.vim'

" unix command helpers
Plug 'tpope/vim-eunuch'
