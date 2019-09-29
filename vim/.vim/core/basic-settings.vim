" use syntax highlighting
syntax enable

" enable all filetype specific configuration
filetype plugin indent on

" speed ups
" only highlight syntax up to a limited number of characters
set synmaxcol=200
" don't draw the screen when unnecessary (eg: during macros)
set lazyredraw

" use utf8 encoding for the ui
" TODO: detect support for unicode
set encoding=utf-8

" abbreviated and truncated messages and no intro message
set shortmess=atI

" wrap displayed lines
set wrap
" and only at specific characters (see 'breakat')
set linebreak

" prefix wrapped lines
let &showbreak=' ∟ '

" wrapped lines will follow indent
set breakindent

" show whitespace chars
set list
set listchars=tab:▸\ ,trail:·,extends:>,precedes:<,nbsp:+

" make backspace always work
set backspace=indent,eol,start

" numberline should be enough for upto 999 chars initially
set numberwidth=4

" don't scan included files for completion
set complete-=i

" don't consider octal numbers for increment/decrement
set nrformats-=octal

" h and l wrap around
set whichwrap+=h,l

" split direction
set splitright splitbelow

" diff options
set diffopt=filler,vertical,foldcolumn:1

" margin is by default at 80
set textwidth=80

" set the column marker at textwidth + 1 so that the last character is just
" before the line starts
autocmd filetype * let &l:colorcolumn = 1 + &l:textwidth

" always only one space when joining
set nojoinspaces

" delete comment character when joining commented lines
set formatoptions+=j

" undo
set undolevels=1000

" use a large history
set history=1000

" display incomplete commands
set showcmd

" allow unloading modified buffers
set hidden

" updatetime, short to support git-gutter and other plugins
set updatetime=250

" flash matching braces/brackets/parens when inserting one
set showmatch
set matchtime=3

" enable mouse
set mouse=a

" all windows have a statusline
set laststatus=2

" show cursor position in status line
set ruler

" enable and setup wildmenu
set wildmenu
set wildmode=longest:full,list:full
set wildignore+=node_modules                     " node_modules dir
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.DS_Store                       " OSX trash
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images

" show some text around the cursor when possible
set scrolloff=5
set sidescrolloff=5

" display as much of the last line as possible
set display+=lastline

" allow windows that are just status bars
set winminheight=0

" show current mode
set showmode

" don't create backup files
set nobackup

" create backups while overwriting just in case
set writebackup

" no swap files
set swapfile

" use most secure encryption available
if has('cryptv')
  if v:version > 704 || v:version == 704 && has('patch399')
    set cryptmethod=blowfish2
  elseif v:version >= 703
    set cryptmethod=blowfish
  endif
endif

" always show sign column
set signcolumn=yes

" Use the (slower) backup method,
" the other method can interfere with file watchers
set backupcopy=yes
