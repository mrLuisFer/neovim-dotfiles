local use = require('packer').use

-- PACKER:
return require('packer').startup(function()
   -- THEMES: -----------------------------------
  use {
    'marko-cerovac/material.nvim',
    as='material'
  }
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'
  use 'safv12/andromeda.vim'
  use 'ghifarit53/tokyonight-vim'
  use {
    'dracula/vim',
    as = 'dracula'
  }
  use 'liuchengxu/space-vim-theme'
  use 'ackyshake/Spacegray.vim'
  use 'sainnhe/edge'
  use 'sainnhe/sonokai'
  use 'mhartington/oceanic-next'
  use 'glepnir/oceanic-material'
  use 'sainnhe/everforest'
  use 'dunstontc/vim-vscode-theme' -- <dark_plus>
  use 'franbach/miramare'
  use {
    'embark-theme/vim',
    as = 'embark'
  }
  use {
    'rose-pine/neovim',
    as = 'rose-pine'
  }
  use 'Pocco81/Catppuccino.nvim'
  use {
    'overcache/NeoSolarized',
    as='NeoSolarized'
  }

  -- IDE: -----------------------------------
  use 'wbthomason/packer.nvim'
	use 'lewis6991/impatient.nvim'
  use 'easymotion/vim-easymotion'
  -- Navigate with C-h C-l C-j C-k
  use 'christoomey/vim-tmux-navigator'
  use 'kyazdani42/nvim-tree.lua'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  use 'preservim/nerdcommenter'
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main'
  }
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'
  -- FZF
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
  use 'junegunn/fzf.vim'
  use 'terryma/vim-multiple-cursors'
  use 'yggdroot/indentline'
  use 'psliwka/vim-smoothie'
  use 'glepnir/dashboard-nvim'
  use 'akinsho/nvim-bufferline.lua'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'SirVer/ultisnips'
	use 'editorconfig/editorconfig-vim'

  -- INTEGRATIONS: ------------------------------
  use 'norcalli/nvim-colorizer.lua'
  -- Git Integration
  use 'mhinz/vim-signify'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'junegunn/gv.vim'
  --------------------
  use 'nvim-lua/plenary.nvim'
  use 'mattn/emmet-vim'

  use 'maxmellon/vim-jsx-pretty'
  use 'peitalin/vim-jsx-typescript'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'evanleck/vim-svelte'

  use 'prettier/vim-prettier'
  use 'trusktr/seti.vim'
  use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries'
  }
  -----------------------------------------------------------------
end)
