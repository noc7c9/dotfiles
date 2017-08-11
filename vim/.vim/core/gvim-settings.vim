if !env#is_gvim()
    finish
endif

" start maximized
autocmd guienter * simalt ~x

" font
set guifont=Consolas

" hide menu, toolbar and scrollbars
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=r
set guioptions-=L
