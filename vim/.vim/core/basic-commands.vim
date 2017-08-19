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

" commands for adjusting indentation rules manually
" source: https://github.com/romainl/minivimrc
command! -nargs=1 IndentSpaces execute "setlocal tabstop=" . <args>
                             \ . " shiftwidth=" . <args>
                             \ . " softtabstop=" . <args>
                             \ . " expandtab"
                             \ | setlocal ts? sw? sts? et?
command! -nargs=1 IndentTabs execute "setlocal tabstop=" . <args>
                           \ . " shiftwidth=" . <args>
                           \ . " softtabstop=" . <args>
                           \ . " noexpandtab"
                           \ | setlocal ts? sw? sts? et?
