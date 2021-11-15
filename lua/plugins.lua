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
  use {'morhetz/gruvbox'}
  use {'shinchu/lightline-gruvbox.vim'}
  use {'sheerun/vim-polyglot'}
  use {'joshdick/onedark.vim'}
  use {'safv12/andromeda.vim'}
  use {'dracula/vim', as = 'dracula' }
  use {'liuchengxu/space-vim-theme'}
  use {'ackyshake/Spacegray.vim'}
  use {'sainnhe/edge'}
  use {'sainnhe/sonokai'}
  use {'mhartington/oceanic-next'}
  use {'glepnir/oceanic-material'}
  use {'sainnhe/everforest'}
  use {'franbach/miramare'}
  use {'embark-theme/vim', as = 'embark' }
  use {'rafi/awesome-vim-colorschemes'}
  use {'rose-pine/neovim', as = 'rose-pine' }
  use {'Pocco81/Catppuccino.nvim'}

  -- IDE
  use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }
  use { 'easymotion/vim-easymotion'}
  use { 'christoomey/vim-tmux-navigator'}
  use { 'kyazdani42/nvim-tree.lua'}
  use { 'ryanoasis/vim-devicons'}
  use { 'kyazdani42/nvim-web-devicons'}
  use { 'preservim/nerdcommenter'}
  use { 'jiangmiao/auto-pairs'}
  use { 'alvan/vim-closetag'}
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
  use { 'junegunn/fzf.vim',}
  use { 'terryma/vim-multiple-cursors'}
  use { 'yggdroot/indentline'}
  use { 'psliwka/vim-smoothie'}
  use { 'liuchengxu/vim-clap'}
  use { 'equalsraf/neovim-gui-shim'}
  use { 'glepnir/dashboard-nvim'}
  use { 'dense-analysis/ale'}
  use { 'Shougo/deoplete.nvim', run = ':UpdateRemotePlugins' }
  use { 'norcalli/nvim-colorizer.lua'}
  use { 'mhinz/vim-signify'}
  use { 'tpope/vim-fugitive'}
  use { 'tpope/vim-rhubarb'}
  use { 'junegunn/gv.vim'}
  use { 'mattn/emmet-vim'}
  use { 'maxmellon/vim-jsx-pretty'}
  use { 'chemzqm/vim-jsx-improve'}
  use { 'peitalin/vim-jsx-typescript'}
  use { 'prettier/vim-prettier'}
  use { 'cakebaker/scss-syntax.vim'}
  use { 'trusktr/seti.vim'}
  use { 'mlaursen/vim-react-snippets'}
  use { 'pangloss/vim-javascript'}
  use { 'styled-components/vim-styled-components', branch = 'main' }
  use { 'leafgarland/typescript-vim'}
  use { 'editorconfig/editorconfig-vim'}
  use { 'evanleck/vim-svelte'}
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  use { 'akinsho/nvim-bufferline.lua'}
end)
