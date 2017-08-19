" should only map these if incsearch.vim is installed and loaded
if exists('g:loaded_incsearch')
    map /  <Plug>(incsearch-forward)\v
    map ?  <Plug>(incsearch-backward)\v
    map g/ <Plug>(incsearch-stay)\v
endif
