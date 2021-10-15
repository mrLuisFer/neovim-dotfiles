" Vim-go config
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Run gofmt on save
autocmd BufWritePre *.go :GoFmt

autocmd BufWritePre *.go lua goimports(1000)
