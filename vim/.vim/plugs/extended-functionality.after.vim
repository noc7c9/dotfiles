" should only map these if incsearch.vim is installed and loaded
if exists('g:loaded_incsearch')
    map /  <Plug>(incsearch-forward)
    map ?  <Plug>(incsearch-backward)
    map g/ <Plug>(incsearch-stay)
endif
