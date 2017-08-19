Plug 'OmniSharp/omnisharp-vim', {
    \ 'do': 'cd server && ' . (env#is_win() ? 'msbuild' : 'xbuild')
\ }

" required to launch omnisharp server
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" make sure fzf is used as the selector ui
let g:OmniSharp_selector_ui = 'fzf'

if env#is_neovim()
    Plug 'https://gitlab.com/mixedCase/deoplete-omnisharp.git'
endif
