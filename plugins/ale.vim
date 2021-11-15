let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

let g:ale_completion_autoimport = 1
