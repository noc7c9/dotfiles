" setup leader
let mapleader = "\<space>"
let maplocalleader = "\<space>\<space>"

" easier command line access
nnoremap ; :
vnoremap ; :
" the reverse
nnoremap : ;
vnoremap : ;

" don't exit visual mode while shifting
" and also don't round indent
vnoremap < :<c-u>set nosr<cr>gv<:set sr<cr>gv
vnoremap > :<c-u>set nosr<cr>gv>:set sr<cr>gv

" swap ' and ` since ' is closer but is less useful
nnoremap ' `
nnoremap ` '

" navigation by default uses displayed lines rather than buffer lines
" except if used with a count (count means jump to (relative) line number)
nnoremap <expr> j v:count > 0 ? "j" : "gj"
nnoremap <expr> k v:count > 0 ? "k" : "gk"
xnoremap <expr> j v:count > 0 ? "j" : "gj"
xnoremap <expr> k v:count > 0 ? "k" : "gk"

" the reverse
nnoremap gj j
nnoremap gk k
xnoremap gj j
xnoremap gk k

" make Y consistent with C and D (ie. don't include the newline)
" note: not nnoremap because of vim-yankstack
nmap Y y$

" remap K keyword lookup
nnoremap K <nop>
vnoremap K <nop>
nnoremap <leader>k K
vnoremap <leader>k K

" qq to record, Q to run
nnoremap Q @q

" clipboard register shortcut
nnoremap <leader>c "+
vnoremap <leader>c "+

" disable f1 help mapping
noremap <f1> <nop>
noremap! <f1> <nop>

" break undo while typing, for better undo history
inoremap <cr> <c-g>u<cr>
inoremap <c-u> <c-g>u<c-u>

" window movement
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" insert mode paste (ctrl-c in insert mode is mostly useless)
inoremap <c-c> <c-r>+
" same for commandline (ctrl-c is same as esc in commandline)
cnoremap <c-c> <c-r>+

" commandline history navigation
if env#is_mac()
    cnoremap ∆ <down>
    cnoremap ˚ <up>
else
    cnoremap <m-j> <down>
    cnoremap <m-k> <up>
endif

" buffer switching
nnoremap <leader>b :buffers<cr>:edit #

" sister map to J, shadows S but a simple alternative is cc
nnoremap S r<cr>

" tab mappings that fit other programs
nnoremap <c-tab> :tabnext<cr>
nnoremap <c-s-tab> :tabprevious<cr>

" setup "oo" to insert an empty line
" (o is used as a prefix by custom wordmotion mappings)
nnoremap oo o
