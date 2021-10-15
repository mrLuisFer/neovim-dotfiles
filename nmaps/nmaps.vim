"------------------------------------------------------------------------------------
" NOTE: These are some of the nmaps or shortcuts that are available,
" they are in a single file so that it is easier to configure
" and thus not overwriting one that is already in use
"------------------------------------------------------------------------------------

""" INFO: INIT.vim
" Get out of insert mode
imap jk <Esc>
imap <C-c> <Esc>l
"Moves Blocks of code in visual mode or V-Line xnoremap K :move '<-2<CR>gv-gv xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
" Better indenting
vnoremap < <gv
vnoremap > >gv

  " Save and close
nmap <leader>x :x <CR>
"save file
nmap <leader>w :w <CR>
"close current  window
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>

" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>

" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

"close buffer
nmap <leader>bd :bdelete<CR>

""" INFO: Bufferline.vim
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>

nnoremap <silent> gb :BufferLinePick<CR>

""" INFO: COC-CONFIG.vim
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nmap <space>f :CocCommand explorer --preset floating<CR>

"" INFO: NVIM-DASHBOARD.vim
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>fw :DashboardFindWord<CR>
nmap <Leader>tc :DashboardChangeColorscheme<CR>
" Or <Leader>fs using FZF
nmap <Leader>ff :DashboardFindFile<CR>
nmap <Leader>fh :DashboardFindHistory<CR>

""" INFO: TREE-LUA.vim
nnoremap <C-b> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <leader>e :NvimTreeOpen<CR>
" NvimTreeClose and NvimTreeFocus are also available if you need them
