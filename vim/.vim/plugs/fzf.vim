Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

nnoremap <leader>b :Buffers<cr>
let g:fzf_buffers_jump = 1

nnoremap <leader>f :Files<space>
nnoremap <leader>g :Ag<space>
