" deletes trailing whitespace
" while trying to not affect anything else (eg: cursor pos)
command! -range=% StripTrailingWhitespace let w:save_search_register = @/
                                      \ | let w:save_pos = getpos('.')
                                      \ | try
                                      \ |     <line1>,<line2>s/\s\+$//
                                      \ | catch
                                      \ | endtry
                                      \ | nohlsearch
                                      \ | let @/ = w:save_search_register
                                      \ | call setpos('.', w:save_pos)
                                      \ | unlet w:save_search_register
                                      \ | unlet w:save_pos
