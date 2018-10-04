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
let g:AutoPairsMultilineClose = 0
" disable unwanted mappings
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutJump = ''
let g:AutoPairsMoveCharacter = ''
let g:AutoPairsMapCh = 0

" start */# search from visual mode
Plug 'bronson/vim-visual-star-search'

" cycle through yank history after pasting
Plug 'maxbrunsfeld/vim-yankstack'
" remap everything other than Y and S
let g:yankstack_yank_keys = ['c', 'C', 'd', 'D', 's', 'x', 'X', 'y']
" use alt-p/n instead of default mappings
let g:yankstack_map_keys = 0
if env#is_mac()
    nmap π <Plug>yankstack_substitute_older_paste
    xmap π <Plug>yankstack_substitute_older_paste
    imap π <Plug>yankstack_substitute_older_paste
    nmap ˜ <Plug>yankstack_substitute_newer_paste
    xmap ˜ <Plug>yankstack_substitute_newer_paste
    imap ˜ <Plug>yankstack_substitute_newer_paste
else
    nmap <m-p> <Plug>yankstack_substitute_older_paste
    xmap <m-p> <Plug>yankstack_substitute_older_paste
    imap <m-p> <Plug>yankstack_substitute_older_paste
    nmap <m-n> <Plug>yankstack_substitute_newer_paste
    xmap <m-n> <Plug>yankstack_substitute_newer_paste
    imap <m-n> <Plug>yankstack_substitute_newer_paste
endif

" incremental search highlighting
Plug 'haya14busa/incsearch.vim'
let g:incsearch#do_not_save_error_message_history = 1

" automatically detect indent settings
Plug 'tpope/vim-sleuth'
