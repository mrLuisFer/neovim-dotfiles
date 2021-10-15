" ░░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
" ░██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
" ╗██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
" ╝██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
" ░╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
" ░░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░
"
" GIT: 
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
" VIM_GO:
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Launch gopls when Go files are in use
let g:LanguageClient_serverCommands = {
       \ 'go': ['gopls']
       \ }
" Run gofmt on save
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

" TAB_CONFIG:
let g:indentLine_enabled = 1
let g:indentLine_char = ' '
let g:indentLine_faster = 1

let g:indentLine_fileTypeExclude=["NvimTree"]
" GRUVBOX:
let g:gruvbox_contrast_dark = "medium"
" TOKYONIGHT:
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0

" Better_Scape:
let g:better_escape_interval = 200
let g:better_escape_shortcut = ['jk', 'jj', 'kj', 'лл']

