autocmd bufread,bufnewfile *.shader,*.cginc set filetype=hlsl

" pyfect
autocmd bufread,bufnewfile *.pyf execute 'set filetype=' . expand('%:r:e')

" .env files
autocmd bufread,bufnewfile .env,.env.* set filetype=sh

" js and jsx files should use the same filetype
" same for ts and tsx
autocmd filetype javascriptreact set filetype=javascript
autocmd filetype typescriptreact set filetype=typescript
