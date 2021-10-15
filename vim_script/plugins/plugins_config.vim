" ░░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
" ░██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
" ╗██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
" ╝██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
" ░╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
" ░░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░

" INFO: Git integration config
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" INFO: Vim Typescript
let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
let g:typescript_ignore_browserwords = 1

" INFO: Vim Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" INFO: Vim Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" INFO: tabs configuration
let g:indentLine_enabled = 1
let g:indentLine_char = ' '
let g:indentLine_faster = 1

let g:indentLine_fileTypeExclude=["NvimTree"]
" INFO: gruvbox config
let g:gruvbox_contrast_dark = "medium"
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" INFO:
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

