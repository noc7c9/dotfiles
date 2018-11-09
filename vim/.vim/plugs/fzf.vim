Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

nnoremap <leader>b :Buffers<cr>

nnoremap <leader>f :Files<cr>
nnoremap <leader>g :Rg<space>

" terminal mode maps <esc> to exit to normal mode
" this maps it to send <esc> to fzf directly (to cancel fzf)
autocmd filetype fzf tnoremap <buffer> <esc> i<esc>
