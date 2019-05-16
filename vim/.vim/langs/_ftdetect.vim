autocmd bufread,bufnewfile *.shader,*.cginc set filetype=hlsl

" pyfect
autocmd bufread,bufnewfile *.pyf execute 'set filetype=' . expand('%:r:e')

" .env files
autocmd bufread,bufnewfile .env,.env.* set filetype=sh

" node.js .mjs files should be treated the same as other .js files
autocmd bufread,bufnewfile *.mjs set filetype=javascript.jsx

" treat regular typescript the same as typescript.jsx
autocmd bufread,bufnewfile *.ts set filetype=typescript.jsx
