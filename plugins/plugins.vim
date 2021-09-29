all plug#begin('~/.vim/plugged')
"--------------------------- IDE -----------------------------------
Plug 'easymotion/vim-easymotion'
"Navigate with C-h C-l C-j C-k
"Navegar con C-h C-l C-j C-k
Plug 'christoomey/vim-tmux-navigator'
" Nvim Tree Lua
Plug 'kyazdani42/nvim-tree.lua'
" ICONS
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
  " NerdCommenter
Plug 'preservim/nerdcommenter'
"ChadTree (Nerdtree Alternative )

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Close pairs () [] {} ''
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
"Multiple cursor like in vscode
Plug 'terryma/vim-multiple-cursors'
"Have the indent lines
Plug 'yggdroot/indentline'
"Smooth Scrolling
Plug 'psliwka/vim-smoothie'
" Vim Clap
Plug 'liuchengxu/vim-clap'

if has('win32') || has('win64')
  " NeovimQt Plugin
  Plug 'equalsraf/neovim-gui-shim'
endif
" Vim Dashboard
Plug 'glepnir/dashboard-nvim'
" --- Airline Extensions ----------------------------
Plug 'dense-analysis/ale'


" -----------------------------------------------------------------

"--------------------------- Integrations -----------------------------------
"colorizer plugin for #fe4918
Plug 'norcalli/nvim-colorizer.lua'
"Git Integration ______________
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
" Emmet Plugin -> https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'
" JSX Syntax
Plug 'maxmellon/vim-jsx-pretty'
" Vim JSX Improve
Plug 'chemzqm/vim-jsx-improve'
" Vim JSX Typescript
Plug 'peitalin/vim-jsx-typescript'
" Vim Prettier
Plug 'prettier/vim-prettier'
" SCSS Syntax
Plug 'cakebaker/scss-syntax.vim'
" Seti.vim
Plug 'trusktr/seti.vim'
" Vim React Snippets
"Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
" Vim Javascript
Plug 'pangloss/vim-javascript'
" Vim Styled Components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Vim Typescript
Plug 'leafgarland/typescript-vim'
" EditorConfig
Plug 'editorconfig/editorconfig-vim'
" Svelte
Plug 'evanleck/vim-svelte'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"---------------------------- Bufferline -------------------------------
Plug 'akinsho/nvim-bufferline.lua'
"-----------------------------------------------------------------
call plug#end()
