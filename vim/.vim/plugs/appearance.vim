" visible indent levels
Plug 'nathanaelkane/vim-indent-guides'

" visible by default on guis
" not on terms because it looks ugly
autocmd guienter * IndentGuidesEnable

" stops vim-indent-guides from creating the toggle mapping
nmap <silent> <nop> <Plug>IndentGuidesToggle

" multicolor parens pairs
Plug 'luochen1990/rainbow'
" inactive by default
" note: the variable has to be defined for the plugin to be loaded at all
let g:rainbow_active = 0

" visible git diff in sign column
Plug 'airblade/vim-gitgutter'

" visible marks in sign column
Plug 'kshenoy/vim-signature'
" support git-gutter colors for the mark signs
let g:SignatureMarkTextHLDynamic = 1
let g:SignaturePurgeConfirmation = 1
