local use = require('packer').use

-- PACKER_STARUP:
return require('packer').startup(function()
  -- THEMES:
  use 'morhetz/gruvbox'
  use 'shinchu/lightline-gruvbox.vim'
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

  -- IDE:
  use 'wbthomason/packer.nvim'
  use 'easymotion/vim-easymotion'
  use 'christoomey/vim-tmux-navigator'
  use 'kyazdani42/nvim-tree.lua'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  use 'preservim/nerdcommenter'
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main'
  }
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'
  use {
    'junegunn/fzf', 
    dir = '~/.fzf', 
    run = './install --all' 
  }
  use 'junegunn/fzf.vim'
  use 'terryma/vim-multiple-cursors'
  use 'yggdroot/indentline'
  use 'psliwka/vim-smoothie'
  use 'liuchengxu/vim-clap'
  use 'glepnir/dashboard-nvim'
  use 'akinsho/nvim-bufferline.lua'

  -- LANGS:
  use 'rust-lang/rust.vim'
  use 'mhinz/vim-mix-format'
	use 'ambv/black'
	use 'editorconfig/editorconfig-vim'

  -- INTEGRATIONS:
  use 'norcalli/nvim-colorizer.lua'
  use 'mhinz/vim-signify'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'junegunn/gv.vim'
  use 'mattn/emmet-vim'
  use 'maxmellon/vim-jsx-pretty'
  use 'chemzqm/vim-jsx-improve'
  use 'peitalin/vim-jsx-typescript'
  use 'prettier/vim-prettier'
  use 'cakebaker/scss-syntax.vim'
  use 'trusktr/seti.vim'
  use 'SirVer/ultisnips'
  use 'pangloss/vim-javascript'
  use {
    'styled-components/vim-styled-components',
    branch = 'main'
  }
  use 'leafgarland/typescript-vim'
  use 'evanleck/vim-svelte'
  use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries'
  }
  -----------------------------------------------------------------
end)
