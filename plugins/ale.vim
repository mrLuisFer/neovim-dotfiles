let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

let g:ale_completion_autoimport = 1
let g:ale_lint_on_save = 1

function! SmartInsertCompletion() abort
  " Use the default CTRL-N in completion menus
  if pumvisible()
    return "\<C-n>"
  endif
  " Exit and re-enter insert mode, and use insert completion
  return "\<C-c>a\<C-n>"
endfunction
inoremap <silent> <C-n> <C-R>=SmartInsertCompletion()<CR>

let g:ale_completion_symbols = {
  \ 'text': '',
  \ 'method': '',
  \ 'function': '',
  \ 'constructor': '',
  \ 'field': '',
  \ 'variable': '',
  \ 'class': '',
  \ 'interface': '',
  \ 'module': '',
  \ 'property': '',
  \ 'unit': 'unit',
  \ 'value': 'val',
  \ 'enum': '',
  \ 'keyword': 'keyword',
  \ 'snippet': '',
  \ 'color': 'color',
  \ 'file': '',
  \ 'reference': 'ref',
  \ 'folder': '',
  \ 'enum member': '',
  \ 'constant': '',
  \ 'struct': '',
  \ 'event': 'event',
  \ 'operator': '',
  \ 'type_parameter': 'type param',
  \ '<default>': 'v'
  \ }

" Golang Linter
let g:ale_linters = {
  \ 'go': ['gopls'],
  \}
