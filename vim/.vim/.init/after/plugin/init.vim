" Source all the core/*.vim files
call init#source('$HOME/.vim/core/*.vim')

" Source *.after.vim files in the plugs/ and langs/ folders
call init#source('$HOME/.vim/plugs/*.after.vim')
call init#source('$HOME/.vim/langs/*.after.vim')
