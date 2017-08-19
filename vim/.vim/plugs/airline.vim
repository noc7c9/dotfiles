Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" setup theme
let g:airline_theme = 'molokai'

" indicate powerline font is to be used
" see: https://github.com/nicolalamacchia/powerline-consolas
let g:airline_powerline_fonts = 1

" use the enhanced tabline
let g:airline#extensions#tabline#enabled = 1
" don't show the close button
let g:airline#extensions#tabline#show_close_button = 0
