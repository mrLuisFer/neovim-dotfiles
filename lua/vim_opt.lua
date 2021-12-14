-- global options
local g = vim.g
-- window scoop options
local wo = vim.wo
-- general 
local o = vim.o
-- ^ basically all of the above
local set = vim.opt
local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

g.mapleader = ' ' -- <Space>
g.rainbow_active = 1

set.number = true
set.showcmd = true
set.ruler = true
set.showmatch = true
set.hlsearch = true
set.cursorline = true
set.title = true
set.smarttab = true
set.smartindent = true
set.hidden = true
set.termguicolors = true

set.laststatus = 2
set.showtabline = 2
set.scrolloff = 3
set.shiftwidth = 2
set.tabstop = 2
set.cmdheight = 1
set.updatetime = 300

set.background = "dark"
set.encoding = "utf-8"
set.clipboard = "unnamed"
set.mouse = "a"

set.completeopt = { 'menuone', 'noinsert', 'noselect' }

-- Don't show any numbers inside terminals
cmd [[ au TermOpen term://* setlocal nonumber norelativenumber ]]

