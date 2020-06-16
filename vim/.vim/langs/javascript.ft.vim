setlocal commentstring=//%s

let b:ale_fixers = ['prettier']

" enable syntax based folding
setlocal foldmethod=syntax
setlocal foldminlines=5
setlocal foldnestmax=5

" jsx context sensitive vim-commentary
if exists('g:loaded_commentary') && g:loaded_commentary

    let s:js_commentstring = '//%s'
    let s:jsx_commentstring = '{/*%s*/}'

    function! s:isJSXRegion() abort
        let jsxRegionSynID = hlID('jsxRegion')
        let len = col('$') - 1
        if len > 0
            for id in synstack(line('.'), len)
                if id == jsxRegionSynID
                    return 1
                endif
            endfor
        endif
        return 0
    endfunction

    function! s:isJSXComment() abort
        return match(getline(line('.')), '^\s*{/\*.*\*/}') != -1
    endfunction

    function! s:getContextSensitiveCommentString() abort
        if s:isJSXRegion() || s:isJSXComment()
            return s:jsx_commentstring
        else
            return s:js_commentstring
        endif
    endfunction

    augroup javascript_jsx
        autocmd!
        " set comment string on every line change
        " TODO: hook into commentary directly
        autocmd cursormoved <buffer> let &l:commentstring
            \= <SID>getContextSensitiveCommentString()
    augroup END

endif
