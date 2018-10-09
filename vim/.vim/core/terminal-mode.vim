" exit terminal mode via escape
tnoremap <esc> <c-\><c-n>

" window movement
tnoremap <c-h> <c-\><c-n><c-w>h
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l

" default mode in terminal buffers is terminal mode
autocmd bufwinenter,winenter term://* startinsert
autocmd bufleave term://* stopinsert
