" this is an .after.vim file because it has to run after the nvim-gui-shim
if !env#is_qt()
    finish
endif

" swapfiles can break nvim-qt
" https://github.com/equalsraf/neovim-qt/issues/78
" the startup error message if two instances edit a file will definitely trigger
" the issue, so don't bother at all
set noswapfile

" change window title
set title

" initialize when gui is ready
" trying repeatedly until the gui is actually initialized (maximized)
autocmd guienter * call <sid>qt_initialize()
function! s:qt_initialize()
    " set font
    GuiFont! Consolas:h10

    " start maximized
    call GuiWindowMaximized(1)

    " keep trying to initialize if the window isn't maximized
    if !exists('g:GuiWindowMaximized') || !g:GuiWindowMaximized
        call timer_start(250, {_ -> <sid>qt_initialize()})
    endif
endfunction

" also make a public command just in case the gui is ever screwed up
command! ReinitializeNvimQt call <sid>qt_initialize()

" whenever a file is opened, bring the gui to the front
" works with remote opening
autocmd bufenter * call GuiForeground()

" the shim's fullscreen toggling doesn't always properly restore maximized
" status
" instead always maximize after exiting fullscreen
function! s:toggle_fullscreen()
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

" guienter event workaround, since nvim-qt doesn't trigger it
" use the first triggering of the focusgained event instead
augroup nvim_qt_guienter_workaround
    autocmd!
    autocmd focusgained * doautocmd <nomodeline> guienter
                      \ | autocmd! nvim_qt_guienter_workaround
augroup END
