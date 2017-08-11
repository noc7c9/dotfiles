if !env#is_conemu()
    finish
endif

" neovim doesn't require these changes
if env#is_neovim()
    finish
endif

" fix colors and unicode
" note: requires chcp 65001 for terminal vim
set termencoding=utf8
set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" fix backspace
inoremap <char-0x07f> <bs>
nnoremap <char-0x07f> <bs>

" mouse wheel support
inoremap <Esc>[62~ <C-X><C-E>
inoremap <Esc>[63~ <C-X><C-Y>
nnoremap <Esc>[62~ <C-E>
nnoremap <Esc>[63~ <C-Y>
