Plug 'davidhalter/jedi-vim'

let g:jedi#force_py_version = 3

if env#is_neovim()
    Plug 'zchee/deoplete-jedi'

    " disable jedi-vim's completions, use deoplete instead
    let g:jedi#completions_enabled = 0
endif
