setlocal commentstring=//%s

let b:ale_fixers = ['refmt']
let g:ale_reasonml_refmt_executable = 'bsrefmt'
let g:ale_reason_ls_executable = 'reason-language-server'
