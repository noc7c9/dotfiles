" quick quit
nnoremap <buffer> <esc><esc> :quit<cr>

" mappings for the tag stack
nnoremap <buffer> <cr> <c-]>
nnoremap <buffer> <bs> <c-t>

" faster scroll with shift-j/k
nnoremap <buffer> J 5j
nnoremap <buffer> K 5k

" get rid of unnecessary elements
setlocal nocursorline nocursorcolumn
setlocal colorcolumn=

" show the relative number line but don't use the auto numberline toggling
setlocal number
setlocal relativenumber
let w:auto_numberline = 0

" cursor should remain centered on the screen
SetBufferLocal scrolloff=999
