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
let g:LanguageClient_serverCommands = {
       \ 'go': ['gopls']
       \ }
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

" VIM_CLOSETAG:
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

" VIM_PRETTIER:
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

