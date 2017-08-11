" replace builtin commands
" as well as create commands that start with a simple character
Plug 'kana/vim-altercmd'

" create a dummy command for when the plugin isn't installed
command! -bar -nargs=* AlterCommand silent!
