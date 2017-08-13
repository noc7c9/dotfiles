" Define environment constants
" functions to make sure they don't misbehave due to load order
" mainly relevant for nvim-qt (nvim-gui-shim) but keep things consistent

function! env#is_win()
    return has('win32') || has('win64')
endfunction
function! env#is_linux()
    return has('unix') && !has('macunix') && !has('win32unix')
endfunction

function! env#is_neovim()
    return has('nvim')
endfunction
function! env#is_vim()
    return !env#is_neovim()
endfunction

function! env#is_gvim()
    return env#is_vim() && has('gui_running')
endfunction
function! env#is_qt()
    " actually checks for the nvim-gui-shim, but should be accurate enough
    return exists('g:GuiLoaded') && g:GuiLoaded
endfunction

function! env#is_gui()
    return env#is_gvim() || env#is_qt()
endfunction
function! env#is_term()
    return !env#is_gui()
endfunction

function! env#is_conemu()
    return env#is_term() && !empty($ConEmuPID)
endfunction
