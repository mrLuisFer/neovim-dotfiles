local use = require('packer').use

-- Packer
return require('packer').startup(function()
  -- IDE
  use 'wbthomason/packer.nvim'
	-- Impatient
	use 'lewis6991/impatient.nvim'

  -- Themes
  use {
    'marko-cerovac/material.nvim',
    as='material'
  }
  use 'morhetz/gruvbox'
  use 'shinchu/lightline-gruvbox.vim'
  use 'joshdick/onedark.vim'
  use 'safv12/andromeda.vim'
  use 'ghifarit53/tokyonight-vim'
  -- Dracula Theme
  use {
    'dracula/vim',
    as = 'dracula'
  }
  -- Space Vim Theme
  use 'liuchengxu/space-vim-theme'
  -- Spacegray Theme
  use 'ackyshake/Spacegray.vim'
  -- Edge Theme -> https://github.com/sainnhe/edge/blob/master/doc/edge.txt
  use 'sainnhe/edge'
  -- Sonokai Theme -> https://github.com/sainnhe/sonokai/blob/master/doc/sonokai.txt
  use 'sainnhe/sonokai'
  -- Oceanic Next Theme
  use 'mhartington/oceanic-next'
  -- Oceanic Material
  use 'glepnir/oceanic-material'
  -- Eveforest Theme -> https://github.com/sainnhe/everforest/blob/master/doc/everforest.txt
  use 'sainnhe/everforest'
  -- VsCode Theme
  use 'dunstontc/vim-vscode-theme' -- <dark_plus>
  -- Miramare theme
  use 'franbach/miramare'
  -- Emberk theme
  use {
    'embark-theme/vim',
    as = 'embark'
  }
  -- Awesome Vim Plugins -> by rufi
  use 'rafi/awesome-vim-colorschemes'
  -- Rose Pine Theme
  use {
    'rose-pine/neovim',
    as = 'rose-pine'
  }
  -- Catppuccino Theme
  use 'Pocco81/Catppuccino.nvim'
  -- NeoSolarized
  use {
    'overcache/NeoSolarized',
    as='NeoSolarized'
  }
-------------------------- IDE -----------------------------------
  use 'easymotion/vim-easymotion'
  -- Navigate with C-h C-l C-j C-k
  -- Navegar con C-h C-l C-j C-k
  use 'christoomey/vim-tmux-navigator'

  -- Nvim Tree Lua
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
  -- ICONS
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  -- NerdCommenter
  use 'preservim/nerdcommenter'
	-- Staline
	use 'tamton-aquib/staline.nvim'
  -- Lua Completion
  use 'nvim-lua/completion-nvim'
  -- LSP Config
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'glepnir/lspsaga.nvim'
  -- Close pairs () [] {} ''
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'

  -- FZF
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
  use 'junegunn/fzf.vim'

  -- Multiple cursor like in vscode
  use 'terryma/vim-multiple-cursors'
  -- Have the indent lines
  use 'yggdroot/indentline'
  -- Smooth Scrolling
  use 'psliwka/vim-smoothie'
  -- Vim Clap
  use 'liuchengxu/vim-clap'

  -- Vim Dashboard
  use 'glepnir/dashboard-nvim'
  --- Ale
  use 'dense-analysis/ale'
	-- Bufferline
  use 'akinsho/nvim-bufferline.lua'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  ---------------------- Langs ------------------------------
	-- Rust
  use 'rust-lang/rust.vim'
	-- Elixir
  use 'elixir-editors/vim-elixir'
	-- Editor Config
	use 'editorconfig/editorconfig-vim'
	-----------------------------------------------------------------

  ---------------------- Integrations ------------------------------
  -- colorizer plugin for #fe4918
  use 'norcalli/nvim-colorizer.lua'
  -- Git Integration
  use 'mhinz/vim-signify'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'junegunn/gv.vim'
  -- Emmet Plugin -> https://github.com/mattn/emmet-vim
  use 'mattn/emmet-vim'
  -- JSX Syntax
  use 'maxmellon/vim-jsx-pretty'
  -- Vim JSX Typescript
  use 'peitalin/vim-jsx-typescript'
  -- Vim Prettier
  use 'prettier/vim-prettier'
  -- SCSS Syntax
  use 'cakebaker/scss-syntax.vim'
  -- Seti.vim
  use 'trusktr/seti.vim'
  -- Vim React Snippets
  use 'mlaursen/vim-react-snippets'
  -- Vim Javascript
  use 'pangloss/vim-javascript'
  -- Vim Styled Components
  use {
    'styled-components/vim-styled-components',
    branch = 'main'
  }
  -- Vim Typescript
  use 'leafgarland/typescript-vim'
  -- Svelte
  use 'evanleck/vim-svelte'

	-- Golang
  use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries'
  }
  -----------------------------------------------------------------
end)
