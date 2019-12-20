" detect and reload when a file changes
set autoread

" In vim, autoread doesn't actually detect changes when the file changes, it
" checks if the file has changed when you attempt to save it or run shell
" commands or when you *run checktime*
"
" This autocommand forces vim to check more often
autocmd cursormoved,cursorhold,winenter,bufwinenter,focusgained *
            \ if &buftype == '' && filereadable(expand("%:p")) | silent! checktime | endif
