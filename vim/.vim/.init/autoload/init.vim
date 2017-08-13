" Helper function to source the given file
" under the CONFIG augroup
function! init#source(file)
    " echom 'sourcing ' . file
    augroup CONFIG
        execute 'source ' . a:file
    augroup END
endfunction

" Helper function to source the matching pattern of files,
" optionally with an ignore pattern
function! init#source_pattern(pattern, ...)
    " If an ignore pattern was passed,
    " backup the existing wildignore setting
    if a:0
        let wildignore_backup = &wildignore
        let &wildignore = join(a:000, ',')
    endif

    " Find the files matching the pattern
    let matching_files = glob(a:pattern, 0, 1)

    " Restore the wildignore setting
    " Note: this is done before sourcing the files as they may change the
    "       wildignore settings
    if a:0
        let &wildignore = wildignore_backup
    endif

    " Finally source the matching files
    for file in matching_files
        call init#source(file)
    endfor
endfunction
