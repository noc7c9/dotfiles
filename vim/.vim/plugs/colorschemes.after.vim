" s:colorscheme is the preferred one
" s:backup_colorscheme is one that comes with vim
let s:colorscheme = 'molokai'
if env#is_gui()
    let s:backup_colorscheme = 'desert'
else
    let s:backup_colorscheme = 'darkblue'
endif

function! s:SetColorscheme()
    try
        execute 'colorscheme ' . s:colorscheme
    catch
        execute 'colorscheme ' . s:backup_colorscheme
    endtry
endfunction

if env#is_neovim() && env#is_term()
    " setting directly breaks terminal nvim entirely for some reason
    autocmd vimenter * call s:SetColorscheme()
else
    call s:SetColorscheme()
endif
