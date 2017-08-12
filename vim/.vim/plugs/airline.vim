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

" use buffer idx mode
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>b1 <Plug>AirlineSelectTab1
nmap <leader>b2 <Plug>AirlineSelectTab2
nmap <leader>b3 <Plug>AirlineSelectTab3
nmap <leader>b4 <Plug>AirlineSelectTab4
nmap <leader>b5 <Plug>AirlineSelectTab5
nmap <leader>b6 <Plug>AirlineSelectTab6
nmap <leader>b7 <Plug>AirlineSelectTab7
nmap <leader>b8 <Plug>AirlineSelectTab8
nmap <leader>b9 <Plug>AirlineSelectTab9
