" Add the .init folder to the runtime
set runtimepath^=~/.vim/.init
set runtimepath+=~/.vim/.init/after

" Source all the config files
call plug#begin('~/.vim/bundle')

" Source *.vim files in the core/, plugs/ and langs/ folders,
" excluding *.after.vim files.
call init#source('$HOME/.vim/core/*.vim', '*.after.vim')
call init#source('$HOME/.vim/plugs/*.vim', '*.after.vim')
call init#source('$HOME/.vim/langs/*.vim', '*.after.vim', '*.ft.vim')

call plug#end()

" Source filetype specific files
autocmd filetype * let s:file = '$HOME/.vim/langs/' . expand('<amatch>') . '.ft.vim'
               \ | if filereadable(expand(s:file))
               \ |     execute 'source ' . s:file
               \ | endif

" Note: also see .init/after/plugin/init.vim
