" visible indent levels
Plug 'nathanaelkane/vim-indent-guides'

" visible by default on guis
" not on terms because it looks ugly
if env#is_gui()
  let g:indent_guides_enable_on_vim_startup = 1
endif

" stops vim-indent-guides from creating the toggle mapping
nmap <silent> <nop> <Plug>IndentGuidesToggle

" multicolor parens pairs
" Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" visible git diff in sign column
Plug 'airblade/vim-gitgutter'

" visible marks in sign column
Plug 'kshenoy/vim-signature'
" support git-gutter colors for the mark signs
let g:SignatureMarkTextHLDynamic = 1
let g:SignaturePurgeConfirmation = 1
