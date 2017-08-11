" auto numberline
" relative numberline on active window
" normal numberline on background windows
set number
set relativenumber
augroup auto_numberline
  autocmd!

  autocmd vimenter,winnew * let w:auto_numberline = 1
  autocmd filetype * let w:auto_numberline = &l:number || &l:relativenumber

  autocmd focuslost,winleave   * if exists('w:auto_numberline') && w:auto_numberline
                             \ |     setlocal norelativenumber
                             \ | endif
  autocmd focusgained,winenter * if exists('w:auto_numberline') && w:auto_numberline
                             \ |     setlocal relativenumber
                             \ | endif
augroup END
