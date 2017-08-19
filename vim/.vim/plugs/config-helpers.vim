" replace builtin commands
" as well as create commands that start with a simple character
Plug 'kana/vim-altercmd'

" create a dummy command for when the plugin isn't installed
" allows the config to load without errors
command! -bar -nargs=* AlterCommand silent!

" make global only options support buffer/window local
Plug 'vim-scripts/GlobalOptions'
