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

" cycle through yank history after pasting
Plug 'maxbrunsfeld/vim-yankstack'
" remap everything other than Y (which is remapped)
let g:yankstack_yank_keys = ['c', 'C', 'd', 'D', 's', 'S', 'x', 'X', 'y']
" use alt-p/n instead of default mappings
let g:yankstack_map_keys = 0
nmap <m-p> <Plug>yankstack_substitute_older_paste
xmap <m-p> <Plug>yankstack_substitute_older_paste
imap <m-p> <Plug>yankstack_substitute_older_paste
nmap <m-n> <Plug>yankstack_substitute_newer_paste
xmap <m-n> <Plug>yankstack_substitute_newer_paste
imap <m-n> <Plug>yankstack_substitute_newer_paste
