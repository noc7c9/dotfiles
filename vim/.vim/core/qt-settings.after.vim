" this is an .after.vim file because it has to run after the nvim-gui-shim
if !env#is_qt()
    finish
endif

function s:qt_settings()
    " set font
    GuiFont! Consolas:h10

    " start maximized
    call GuiWindowMaximized(1)
endfunction

" swapfiles can break nvim-qt
" https://github.com/equalsraf/neovim-qt/issues/78
" the startup error message if two instances edit a file will definitely trigger
" the issue, so don't bother at all
set noswapfile

" change window title
set title

" the sleep hack is required to bypass the timing issues (waiting for gui to
" initialize)
autocmd vimenter * sleep 100m | call <sid>qt_settings()

" the shim's fullscreen toggling doesn't always properly restore maximized
" status
" instead always maximize after exiting fullscreen
function s:toggle_fullscreen()
    if g:GuiWindowFullScreen
        call GuiWindowFullScreen(0)
        call GuiWindowMaximized(1)
    else
        call GuiWindowFullScreen(1)
    endif
endfunction

" mappings to toggle fullscreen status and maximized status
nnoremap <silent> <f11> :<c-u>call <sid>toggle_fullscreen()<cr>
nnoremap <silent> <c-f11> :<c-u>call GuiWindowMaximized(!g:GuiWindowMaximized)<cr>
