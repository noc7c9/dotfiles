Plug 'w0rp/ale'

" errors on startup for nvim-qt can cause initialization issues
" note: this can't be scoped directly to qt because qt detection is delayed, so
" it has to be disabled for all platforms
let g:ale_enabled = 0
autocmd vimenter,guienter * ALEEnable

" lint a second after changing
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000

" sign characters
let g:ale_sign_error = "X"
let g:ale_sign_warning = "!"
