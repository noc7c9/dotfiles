" this sets up the mappings and commands for some ide features
"
" the actual functionality should be defined on a per language basis in the form
" of funcrefs stored in the following variables, all functions operating on the
" word under the cursor
"  - b:ide_goto_definition
"  - b:ide_open_documentation
"  - b:ide_rename_symbol
"  - b:ide_fzf_list_symbols
"  - b:ide_fzf_list_references

function s:if_exists_call_mapping(varname, default)
    if exists(a:varname)
        execute 'let l:funcname = ' . a:varname
        return ':call ' . l:funcname . '()'
    else
        return a:default
    end
endfunction

function s:if_exists_call_command(varname)
    if exists(a:varname)
        execute 'let l:funcname = ' . a:varname
        execute ':call ' . l:funcname . '()'
    else
        echoerr "ERROR: Functionality not implemented for this language."
    end
endfunction

nnoremap <expr> gd <SID>if_exists_call_mapping('b:ide_goto_definition', 'gd')
nnoremap <expr> <leader>k <SID>if_exists_call_mapping('b:ide_open_documentation', 'K')
nnoremap <expr> <leader>r <SID>if_exists_call_mapping('b:ide_rename_symbol', '')
command! ListSymbols call <SID>if_exists_call_command('b:ide_fzf_list_symbols')
command! ListReferences call <SID>if_exists_call_command('b:ide_fzf_list_references')
