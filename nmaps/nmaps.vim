"------------------------------------------------------------------------------------
" NOTE: These are some of the nmaps or shortcuts that are available,
" they are in a single file so that it is easier to configure
" and thus not overwriting one that is already in use
"------------------------------------------------------------------------------------

" Get out of insert mode
imap <ESC>
imap jk <Esc>
imap <C-c> <Esc>l
"mueve bloques de codigo en modo visual o V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
" Better indenting
vnoremap < <gv
vnoremap > >gv

if has("win64") || has("win32") || has("win16") || has('win95')
  " this is because when you save a file in windows
  " it shows that the file already exists
  nmap <leader>w :w! <CR>
  " save and close
  nmap <leader>x :x! <CR>
elseif has("unix") || has("osxdarwin") || has('linux')
  " save file
  nmap <leader>w :w <CR>
  " save and close
  nmap <leader>x :x <CR>
endif

"close current  window
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>

"Search for two chars with easymotion
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
nnoremap <leader>te :NvimTreeClose<CR>

""" INFO: Lspsaga
nmap <leader>ñ :Lspsaga open_floaterm<CR>
" nnoremap <C-ñ> :Lspsaga close_floaterm<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
" nmap <leader>gr :Lspsaga rename<CR>

" TERMINAL:
nmap <leader>t :terminal<CR>

