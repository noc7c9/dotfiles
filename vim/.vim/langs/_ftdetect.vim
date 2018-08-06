autocmd bufread,bufnewfile *.shader,*.cginc set filetype=hlsl

autocmd bufread,bufnewfile *.react.js set filetype=javascript.jsx

" pyfect
autocmd bufread,bufnewfile *.pyf execute 'set filetype=' . expand('%:r:e')

" .env files
autocmd bufread,bufnewfile .env,.env.* set filetype=sh
