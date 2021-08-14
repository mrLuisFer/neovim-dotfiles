call plug#begin('~/.vim/plugged')
"--------------------------- THEMES -----------------------------------
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'safv12/andromeda.vim'
Plug 'ghifarit53/tokyonight-vim'
" Dracula Theme
Plug 'dracula/vim', { 'as': 'dracula' }
" Space Vim Theme
Plug 'liuchengxu/space-vim-theme'
" Spacegray Theme
Plug 'ackyshake/Spacegray.vim'
" Edge Theme -> https://github.com/sainnhe/edge/blob/master/doc/edge.txt
Plug 'sainnhe/edge'
" Sonokai Theme -> https://github.com/sainnhe/sonokai/blob/master/doc/sonokai.txt 
Plug 'sainnhe/sonokai'
" Oceanic Next Theme 
Plug 'mhartington/oceanic-next'
"" Eveforest Theme -> https://github.com/sainnhe/everforest/blob/master/doc/everforest.txt
Plug 'sainnhe/everforest'
" VsCode Theme
Plug 'dunstontc/vim-vscode-theme' " As <dark_plus>
" Miramare theme
Plug 'franbach/miramare'
" Emberk theme
Plug 'embark-theme/vim', { 'as': 'embark' }
" Awesome Vim Plugins -> by rufi
Plug 'rafi/awesome-vim-colorschemes'
"-----------------------------------------------------------------

"--------------------------- IDE -----------------------------------
Plug 'easymotion/vim-easymotion'
"Navigate with C-h C-l C-j C-k
"Navegar con C-h C-l C-j C-k
Plug 'christoomey/vim-tmux-navigator'
"NERDTREE
Plug 'preservim/nerdtree'
"" Nerdtree git plugin
" show git status in file tree view
Plug 'Xuyuanp/nerdtree-git-plugin'  
" Devicons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
  " NerdCommenter
Plug 'preservim/nerdcommenter'
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
" Vim Dashboard
Plug 'glepnir/dashboard-nvim'
" Spaceline
Plug 'glepnir/spaceline.vim'

if has('win32') || has('win64')
  " NeovimQt Plugin
  Plug 'equalsraf/neovim-gui-shim'
endif
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
"-----------------------------------------------------------------

" --------------------------- Native LSP -----------------------------------
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/vim-vsnip'
Plug 'norcalli/snippets.nvim'
"-----------------------------------------------------------------

"---------------------------- Barbar Tabline -------------------------------
Plug 'romgrk/barbar.nvim' 
"-----------------------------------------------------------------
call plug#end()
