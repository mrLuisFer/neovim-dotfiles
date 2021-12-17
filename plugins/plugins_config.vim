"--------------------------------Plugins Config--------------------------------------------
"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = ' '
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["NvimTree"]
"--gruvbox config--
let g:gruvbox_contrast_dark = "medium"
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0

" Ale Config
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1


" Deoplete
let g:deoplete#enable_at_startup = 1

" Emberk
let g:lightline = {
      \ 'colorscheme': 'embark',
      \ }
let g:airline_theme = 'embark'

"Git integration config
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" Vim-go config
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Vim Clap
let g:clap_provider_alias = {'hist:': 'command_history'}
let g:clap_layout = { 'relative': 'editor' }

" Vim Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" Vim Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Vim Typescript
let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
let g:typescript_ignore_browserwords = 1

" Vim Closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js, *.tsx'

"-----------------------------------------------------------------
