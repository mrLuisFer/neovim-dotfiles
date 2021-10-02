" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Enable/Disable auto popup
let g:completion_enable_auto_popup = 1
imap <tab> <use>(completion_smart_tab)
imap <s-tab> <use>(completion_smart_s_tab)

" Enable Snippets Support
" possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
let g:completion_enable_snippet = 'snippets.vim'

" Enable/Disable auto hover
let g:completion_enable_auto_hover = 0

" Enable/Disable auto signature
let g:completion_enable_auto_signature = 1

" Sorting completion items
" possible value: "length", "alphabet", "none"
let g:completion_sorting = "alphabet"

" Matching Strategy
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_matching_smart_case = 1


