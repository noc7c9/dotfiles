" store all the data files in the same root directory
let s:root_dir = expand('~/.vimtmp/')

" viminfo
set viminfo=""
set viminfo+='100 " num of files to remember marks for
set viminfo+=<100 " num of lines for each reg to remember
set viminfo+=h    " disable restoration of 'hlsearch'
if env#is_neovim()
    let &viminfo .= ',n' . s:root_dir . 'shada'
else
    let &viminfo .= ',n' . s:root_dir . 'viminfo'
endif

" undo
set undofile
let &undodir = s:root_dir . 'undo'

" swapfiles
let &directory = s:root_dir . 'swap//'

" make sure all the directories exist
if empty(glob(&undodir))
    call mkdir(&undodir, "p")
endif
if empty(glob(&directory))
    call mkdir(&directory, "p")
endif
