"██████╗░██╗░░░░░██╗░░░██╗░██████╗░░░░░░░░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
"██╔══██╗██║░░░░░██║░░░██║██╔════╝░░░░░░░██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
"██████╔╝██║░░░░░██║░░░██║██║░░██╗░█████╗██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
"██╔═══╝░██║░░░░░██║░░░██║██║░░╚██╗╚════╝██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
"██║░░░░░███████╗╚██████╔╝╚██████╔╝░░░░░░╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
"╚═╝░░░░░╚══════╝░╚═════╝░░╚═════╝░░░░░░░░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░
"
" These are just some more general configurations which
" i consider do not require their own configuration file.
" Always show tabs
set showtabline=2

"Git integration config
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" Vim-go config
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
