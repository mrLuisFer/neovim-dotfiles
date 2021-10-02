"------------------------------------------------------------------------------------
" NOTE: These are some of the nmaps or shortcuts that are available,
" they are in a single file so that it is easier to configure
" and thus not overwriting one that is already in use
"------------------------------------------------------------------------------------

""" INFO: INIT.vim
" Get out of insert mode
"Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>l
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line xnoremap K :move '<-2<CR>gv-gv xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

  " Save and close
nmap <leader>x :x <CR>
"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands
"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>

"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>

" SHIFT-TAB will go back
" SHIFT-TAB va para atras
nnoremap <silent> <S-TAB> :bprevious<CR>

"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>

""" INFO: Bufferline.vim
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>

nnoremap <silent> gb :BufferLinePick<CR>

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
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <leader>e :NvimTreeOpen<CR>
" NvimTreeOpen, NvimTreeClose and NvimTreeFocus are also available if you need them
