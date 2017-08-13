" deoplete only supports neovim
if !env#is_neovim()
    finish
endif

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

let g:deoplete#enable_at_startup = 1

" mappings for scrolling through completions
inoremap <m-j> <c-n>
inoremap <m-k> <c-p>

" close the preview automatically
autocmd insertleave * pclose!
