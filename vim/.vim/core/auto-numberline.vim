" auto numberline
" relative numberline on active window
" normal numberline on background windows
set number
set relativenumber
augroup auto_numberline
  autocmd!

  autocmd vimenter,winnew * let w:auto_numberline = 1
  autocmd filetype * if !has_key(w:, 'auto_numberline')
                 \ |     let w:auto_numberline = &l:number && &l:relativenumber
                 \ | endif

  autocmd focuslost,winleave,bufwinleave   * if get(w:, 'auto_numberline', 0)
                                         \ |     setlocal norelativenumber
                                         \ | endif
  autocmd focusgained,winenter,bufwinenter * if get(w:, 'auto_numberline', 0)
                                         \ |     setlocal relativenumber
                                         \ | endif
augroup END

call reload#script('AutoNumberline', expand('<sfile>'))
