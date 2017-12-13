function! s:EditMultiple(...)
    execute 'args ' . join(a:000)
endfunction

function! s:SplitMultiple(...)
    execute 'args ' . join(a:000) . ' | silent! all'
endfunction

function! s:VsplitMultiple(...)
    execute 'args ' . join(a:000) . ' | silent! vertical all'
endfunction

command! -nargs=+ -complete=file Edit call <sid>EditMultiple(<f-args>)
command! -nargs=+ -complete=file Split call <sid>SplitMultiple(<f-args>)
command! -nargs=+ -complete=file Vsplit call <sid>VsplitMultiple(<f-args>)

AlterCommand E[dit] Edit
AlterCommand Sp[lit] Split
AlterCommand Vs[plit] Vsplit
