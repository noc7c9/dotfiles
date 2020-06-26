Plug 'chaoren/vim-wordmotion'

" Ignore these characters when jumping words
let g:wordmotion_spaces = '_-.'

" Don't change the WORD motions
let g:wordmotion_mappings = {
\ 'W' : '',
\ 'B' : '',
\ 'E' : '',
\ 'gE' : '',
\ }

" Allow using the regular motions by prefixing/infixing with o (original)
let s:modifier = 'o'
for s:motion in [ 'w', 'e', 'b', 'ge' ]
    for s:mode in [ 'n', 'x', 'o' ]
        execute s:mode . 'noremap <silent>' . s:modifier . s:motion s:motion
    endfor
endfor
for s:motion_prefix in [ 'a', 'i' ]
    for s:mode in [ 'x', 'o' ]
        let s:lhs = s:motion_prefix . s:modifier . 'w'
        let s:rhs = s:motion_prefix . 'w'
        execute s:mode . 'noremap <silent>' . s:lhs s:rhs
    endfor
endfor

" Fix vim's inconsistent operator behaviour
onoremap <silent> <leader>w :<c-u>normal! vwh<cr>
