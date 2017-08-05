" Define environment constants
let IS_WIN = has('win32') || has('win64')
let IS_NEOVIM = has('nvim')

" Make windows use the same runtime location as unix platforms
if IS_WIN
    set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
endif

" Add the .init folder to the runtime
set runtimepath^=~/.vim/.init
set runtimepath+=~/.vim/.init/after

" Source all the config files
call plug#begin('~/.vim/bundle')

" Source *.vim files in the plugs/ and langs/ folders,
" excluding *.after.vim files.
call init#source('$HOME/.vim/plugs/*.vim', '*.after.vim')
call init#source('$HOME/.vim/langs/*.vim', '*.after.vim')

call plug#end()

" Note: also see .init/after/plugin/init.vim
