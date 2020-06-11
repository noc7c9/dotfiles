" deoplete only supports neovim
if !env#is_neovim()
    finish
endif

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

let g:deoplete#enable_at_startup = 1

" display of function signatures
Plug 'Shougo/echodoc.vim'

let g:echodoc#enable_at_startup = 1

" echodoc should handle this
set completeopt-=preview

" don't automatically select any matches
set completeopt+=noselect

" alt-j/k for scrolling through completions
if env#is_mac()
    inoremap ∆ <c-n>
    inoremap ˚ <c-p>
else
    inoremap <m-j> <c-n>
    inoremap <m-k> <c-p>
endif

" (shift-)tab for completions
inoremap <expr> <tab>   pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" backspace integration with deoplete
inoremap <expr> <c-h> deoplete#smart_close_popup()."\<c-h>"
inoremap <expr> <bs>  deoplete#smart_close_popup()."\<c-h>"
