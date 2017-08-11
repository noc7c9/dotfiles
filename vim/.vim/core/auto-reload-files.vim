" detect and reload when a file changes
set autoread

" note: gvim automatically does something similar
autocmd cursorhold,cursorholdi,winenter,bufwinenter,focusgained *
    \ if getcmdwintype() == '' | checktime | endif
