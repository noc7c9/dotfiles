" highlight current line and column in the active window
set cursorline
set cursorcolumn
autocmd winleave * let w:saved_cursorline = &l:cursorline
               \ | let w:saved_cursorcolumn = &l:cursorcolumn
               \ | setlocal nocursorline nocursorcolumn
autocmd winenter * if exists('w:saved_cursorline')
               \ |     let &l:cursorline = w:saved_cursorline
               \ |     unlet w:saved_cursorline
               \ | endif
               \ | if exists('w:saved_cursorcolumn')
               \ |     let &l:cursorcolumn = w:saved_cursorcolumn
               \ |     unlet w:saved_cursorcolumn
               \ | endif
