local use = require('packer').use
local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  execute 'packadd packer.nvim'
end

-- PACKER:
return require('packer').startup(function()
   -- THEMES: -----------------------------------
  use {
    'marko-cerovac/material.nvim',
    as='material'
  }
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'
  use {
    'tiagovla/tokyodark.nvim',
    as = 'tokyodark'
  }
  use {
    'dracula/vim',
    as = 'dracula'
  }
  use {
    'ackyshake/Spacegray.vim',
    as = 'spacegray'
  }
  use 'sainnhe/edge'
  use 'sainnhe/sonokai'
  use 'mhartington/oceanic-next'
  use 'glepnir/oceanic-material'
  use {
    'dunstontc/vim-vscode-theme', -- <dark_plus>
    as = "vscode"
  }
  use 'franbach/miramare'
  use {
    'embark-theme/vim',
    as = 'embark'
  }
  use {
    'rose-pine/neovim',
    as = 'rose-pine'
  }
  use {
    'Pocco81/Catppuccino.nvim',
    as = 'catppuccino'
  }
  use {
    'overcache/NeoSolarized',
    as='NeoSolarized'
  }
  use 'arcticicestudio/nord-vim'
  use 'trusktr/seti.vim'

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
  use 'glepnir/lspsaga.nvim'
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'
  -- FZF
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
  use 'junegunn/fzf.vim'
  use 'yggdroot/indentline'
  use 'psliwka/vim-smoothie'
  use 'glepnir/dashboard-nvim'
  use 'akinsho/nvim-bufferline.lua'
	use 'editorconfig/editorconfig-vim'
  use {
    'hrsh7th/nvim-compe',
   -- requires = 'L3MON4D3/LuaSnip'
  }
  use 'williamboman/nvim-lsp-installer'
	use 'antoinemadec/FixCursorHold.nvim'

  -- INTEGRATIONS: ------------------------------
  use 'norcalli/nvim-colorizer.lua'
  -- Git Integration
  use {
    'tpope/vim-fugitive',
    cmd = 'Git',
  }
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  --------------------
  use 'nvim-lua/plenary.nvim'
  use 'evanleck/vim-svelte'
  use 'prettier/vim-prettier'
  use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries'
  }


  -- Native LSP for neovim
    use 'neovim/nvim-lspconfig'
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            'L3MON4D3/LuaSnip', -- Snippets plugin
            'hrsh7th/cmp-nvim-lsp', -- Source nvim lsp
            'ray-x/lsp_signature.nvim', -- LSP Signature
            'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
        }
    }
    use 'kabouzeid/nvim-lspinstall'
    -- Lsp Utils
    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-lsputils'
    -- Rainbow Brackets
    use 'luochen1990/rainbow'
    -- Autopais
    use 'windwp/nvim-autopairs'
    -- Commenter
    use 'b3nj5m1n/kommentary'
    -- Snippets
    use 'honza/vim-snippets'
    use 'vim-scripts/UltiSnips'
    use 'mlaursen/vim-react-snippets'
    -- Vim sneak
    use 'justinmk/vim-sneak'
  -----------------------------------------------------------------
end)
