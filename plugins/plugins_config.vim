" ░░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
" ░██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
" ╗██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
" ╝██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
" ░╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
" ░░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░

" Git integration config
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" Vim-go config
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Launch gopls when Go files are in use
"let g:LanguageClient_serverCommands = {
"       \ 'go': ['gopls']
"       \ }

" Run gofmt on save
autocmd BufWritePre *.go :GoFmt

" Vim Clap
let g:clap_provider_alias = {'hist:': 'command_history'}
let g:clap_layout = { 'relative': 'editor' }

" LspSaga
" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

" Vim Typescript
let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
let g:typescript_ignore_browserwords = 1

" Vim Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" Vim Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

