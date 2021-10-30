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
local package_path_str = "/home/mrluisfer/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/mrluisfer/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/mrluisfer/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/mrluisfer/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mrluisfer/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  NeoSolarized = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/NeoSolarized"
  },
  UltiSnips = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/UltiSnips"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  catppuccino = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/catppuccino"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  dracula = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/dracula"
  },
  edge = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  embark = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/embark"
  },
  fzf = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/impatient.nvim"
  },
  indentline = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/indentline"
  },
  kommentary = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  material = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/material"
  },
  miramare = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/miramare"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-lsputils"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["oceanic-material"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/oceanic-material"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/oceanic-next"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/popfix"
  },
  rainbow = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/rainbow"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/rose-pine"
  },
  ["seti.vim"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/seti.vim"
  },
  sonokai = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  spacegray = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/spacegray"
  },
  tokyodark = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/tokyodark"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-fugitive"] = {
    commands = { "Git" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-react-snippets"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-react-snippets"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-svelte"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-svelte"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  vscode = {
    loaded = true,
    path = "/home/mrluisfer/.local/share/nvim/site/pack/packer/start/vscode"
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
