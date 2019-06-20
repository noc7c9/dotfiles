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

" show the shortform modes
let g:airline_mode_map = {
            \ '__' : '-',
            \ 'c'  : 'C',
            \ 'i'  : 'I',
            \ 'ic' : 'I',
            \ 'ix' : 'I',
            \ 'n'  : 'N',
            \ 'ni' : 'N',
            \ 'no' : 'N',
            \ 'R'  : 'R',
            \ 'Rv' : 'R',
            \ 's'  : 'S',
            \ 'S'  : 'S',
            \ '' : 'S',
            \ 't'  : 'T',
            \ 'v'  : 'V',
            \ 'V'  : 'V',
            \ '' : 'V',
            \ }

" truncate the git branch
" let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#branch#format = 2

" don't display format if it's the utf-8[unix]
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'

" don't draw empty sections
let g:airline_skip_empty_sections = 1

" modify cursor position display
" - to be shorter
" - not display percentage
" - show real column position
let g:airline_section_z = ' %#__accent_bold#%3l/%L:%2c%#__restore__#'
