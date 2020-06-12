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

" Allow using the regular motions by prefixing with <leader>
for s:motion in [ 'w', 'e', 'b', 'ge' ]
    for s:mode in [ 'n', 'x', 'o' ]
        if s:mode == 'n' && s:motion =~ '.w'
            continue
        endif
        execute s:mode . 'noremap <silent>' '<leader>' . s:motion s:motion
    endfor
endfor
" And aw and iw using a<leader>w and i<leader>w respectively
xnoremap a<leader>w aw
onoremap a<leader>w aw
xnoremap i<leader>w iw
onoremap i<leader>w iw

" Fix vim's inconsistent operator behaviour
onoremap <silent> <leader>w :<c-u>normal! vwh<cr>
