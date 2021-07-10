"Plugins
call plug#begin('~/.vim/plugged')
" Temas
" Themes
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

" Edge Theme -> https://github.com/sainnhe/edge/blob/master/doc/edge.txt
Plug 'sainnhe/edge'

" Sonokai Theme -> https://github.com/sainnhe/sonokai/blob/master/doc/sonokai.txt 
Plug 'sainnhe/sonokai'

" Oceanic Next Theme 
Plug 'mhartington/oceanic-next'

"" Eveforest Theme -> https://github.com/sainnhe/everforest/blob/master/doc/everforest.txt
Plug 'sainnhe/everforest'

" VsCode Theme
Plug 'dunstontc/vim-vscode-theme'

" Miramare theme
Plug 'franbach/miramare'

" IDE
Plug 'easymotion/vim-easymotion'
"Navigate with C-h C-l C-j C-k
"Navegar con C-h C-l C-j C-k
Plug 'christoomey/vim-tmux-navigator'
"NERDTREE
Plug 'preservim/nerdtree'
"" Nerdtree git plugini
" show git status in file tree view
Plug 'Xuyuanp/nerdtree-git-plugin'  
Plug 'ryanoasis/vim-devicons'

  " NerdCommenter
Plug 'preservim/nerdcommenter'

"ChadTree (Nerdtree Alternative )
"
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Close pairs () [] {} ''
"Cerrar los pares () [] {} '' 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
"colorizer plugin for #fe4918
Plug 'norcalli/nvim-colorizer.lua'
"Multiple cursor like in vscode
Plug 'terryma/vim-multiple-cursors'
"Have the indent lines 
Plug 'yggdroot/indentline'
"Git Integration ______________
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
"Smooth Scrolling
Plug 'psliwka/vim-smoothie'

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

" Vim Clap
Plug 'liuchengxu/vim-clap'

" Vim Javascript
Plug 'pangloss/vim-javascript'

"""_____________________________
call plug#end()
