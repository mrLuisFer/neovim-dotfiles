let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'python': ['flake8'],
\   'json': ['jq'],
\}

let b:ale_linter_aliases = ['javascript', 'vue', 'css']
" Golang Linter
let g:ale_linters = {
  \ 'vue': ['vls', 'eslint'],
  \ 'jsx': ['stylelint', 'eslint'],
  \ 'python': ['flake8', 'pylint']
  \}

let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']

let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1
let g:ale_lint_on_save = 1
let g:ale_completion_enabled = 1

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

" Check JSX Files
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
" If you configure g:ale_pattern_options outside of vimrc, you need this.
let g:ale_pattern_options_enabled = 0
