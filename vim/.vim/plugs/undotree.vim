" visualized undo tree
Plug 'mbbill/undotree'

let g:undotree_WindowLayout = 2
let g:undotree_SetFocusWhenToggle = 1

function g:UndoTree_CustomMap()
    nmap <buffer> J <plug>UndotreeNextState
    nmap <buffer> K <plug>UndotreePreviousState
    nmap <buffer> <esc><esc> <plug>UndotreeClose
endfunction

noremap <leader>u :<c-u>UndotreeToggle<cr>
