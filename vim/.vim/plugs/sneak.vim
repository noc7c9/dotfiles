Plug 'justinmk/vim-sneak'

" unmap any existing mappings that will interfere with vim-sneak
silent! nunmap s
silent! nunmap S

" enable clever-s to allow moving to next/prev match using s/S
let g:sneak#s_next = 1

" enable label mode
let g:sneak#label = 1

" change the sneak prompt to be clearer
" FIXME change the airline to show SNEAK when in sneaking mode
let g:sneak#prompt = 'sneak>'

" Turn of the cursor lines when in sneaking
autocmd User SneakEnter set nocursorcolumn nocursorline
autocmd User SneakLeave set cursorcolumn cursorline

" replace f/t with sneak
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
