" bde will access builtin :bdelete
AlterCommand bd Bdelete
AlterCommand x w<bar>Bdelete

" alternative to the :Delete (vim-eunuch) that doesn't change window layout
AlterCommand Del Unlink<bar>Bdelete
