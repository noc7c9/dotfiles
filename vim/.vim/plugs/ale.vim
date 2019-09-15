Plug 'w0rp/ale'

let g:ale_enabled = 1

" lint a second after changing
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000

" sign characters
let g:ale_sign_error = "X"
let g:ale_sign_warning = "!"

" auto fix on save
let g:ale_fix_on_save = 1
let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'] }

" helper command to completely reset ale
command! ALEHardReset ALEDisable<bar>ALEStopAllLSPs<bar>ALEEnable

" mappings
nmap <silent> ]a <Plug>(ale_next_wrap)
nmap <silent> [a <Plug>(ale_previous_wrap)
nmap <silent> <leader>a <Plug>(ale_detail)
