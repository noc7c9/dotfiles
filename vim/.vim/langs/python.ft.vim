let b:ide_goto_definition = 'jedi#goto'
let b:ide_open_documentation = 'jedi#show_documentation'
let b:ide_rename_symbol = 'jedi#rename'
" jedi doesn't seem to have an equivalent
" TODO: tags should work though, or the functionality could be added to jedi
" let b:ide_fzf_list_symbols = ''
let b:ide_fzf_list_references = 'jedi#usages'
