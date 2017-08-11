" quick to quit
nnoremap <buffer> q :quit<cr>

" mappings for the tag stack
nnoremap <buffer> <cr> <c-]>
nnoremap <buffer> <bs> <c-t>

" faster scroll with shift-j/k
nnoremap <buffer> J 5j
nnoremap <buffer> K 5k

" get rid of unnecessary elements
setlocal nocursorline nocursorcolumn
setlocal colorcolumn=
