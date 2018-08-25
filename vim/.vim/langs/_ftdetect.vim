autocmd bufread,bufnewfile *.shader,*.cginc set filetype=hlsl

" pyfect
autocmd bufread,bufnewfile *.pyf execute 'set filetype=' . expand('%:r:e')

" .env files
autocmd bufread,bufnewfile .env,.env.* set filetype=sh
