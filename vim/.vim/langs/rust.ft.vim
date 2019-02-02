let b:ale_fixers = ['rustfmt']

let g:ale_rust_cargo_check_tests = 1
let g:ale_rust_cargo_check_examples = 1

let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
" let g:ale_rust_cargo_clippy_options = ''
