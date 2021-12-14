-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/mrluisfer/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/mrluisfer/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/mrluisfer/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/mrluisfer/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mrluisfer/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  NeoSolarized = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/NeoSolarized",
    url = "https://github.com/overcache/NeoSolarized"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  catppuccino = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/catppuccino",
    url = "https://github.com/Pocco81/Catppuccino.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  dracula = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/dracula",
    url = "https://github.com/dracula/vim"
  },
  edge = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  embark = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/embark",
    url = "https://github.com/embark-theme/vim"
  },
  fzf = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  indentline = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/indentline",
    url = "https://github.com/yggdroot/indentline"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  material = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/material",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  miramare = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/miramare",
    url = "https://github.com/franbach/miramare"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nord-vim",
    url = "https://github.com/arcticicestudio/nord-vim"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["oceanic-material"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/oceanic-material",
    url = "https://github.com/glepnir/oceanic-material"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/oceanic-next",
    url = "https://github.com/mhartington/oceanic-next"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["seti.vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/seti.vim",
    url = "https://github.com/trusktr/seti.vim"
  },
  sonokai = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  spacegray = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/spacegray",
    url = "https://github.com/ackyshake/Spacegray.vim"
  },
  tokyodark = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/tokyodark",
    url = "https://github.com/tiagovla/tokyodark.nvim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-fugitive"] = {
    commands = { "Git" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-smoothie",
    url = "https://github.com/psliwka/vim-smoothie"
  },
  ["vim-svelte"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-svelte",
    url = "https://github.com/evanleck/vim-svelte"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
