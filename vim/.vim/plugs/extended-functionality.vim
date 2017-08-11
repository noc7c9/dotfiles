" improved . repeat
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/visualrepeat'

" support filename:line:column format
Plug 'kopischke/vim-fetch'

" c-x/c-a (increment/decrement) supports dates
Plug 'tpope/vim-speeddating'

" autoclose if, do, etc with end in ruby, sh, etc
Plug 'tpope/vim-endwise'

" autoclose/delete parens, brackets, quotes
Plug 'jiangmiao/auto-pairs'
" disable unwanted mappings
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutJump = ''
let g:AutoPairsMoveCharacter = ''

" start */# search from visual mode
Plug 'bronson/vim-visual-star-search'
