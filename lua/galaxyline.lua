local diagnostic = require('galaxyline.provider_diagnostic')
local vcs = require('galaxyline.provider_vcs')
local fileinfo = require('galaxyline.provider_fileinfo')
local extension = require('galaxyline.provider_extensions')
local colors = require('galaxyline.colors')
local buffer = require('galaxyline.provider_buffer')
local whitespace = require('galaxyline.provider_whitespace')
local lspclient = require('galaxyline.provider_lsp')

require('galaxyline')

require('galaxyline').section.left[1]= {
  FileSize = {
    provider = 'FileSize',
    condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
      end,
    icon = '   ',
    highlight = {colors.green,colors.purple},
    separator = '',
    separator_highlight = {colors.purple,colors.darkblue},
  }
}

-- provider 
BufferIcon  = buffer.get_buffer_type_icon,
BufferNumber = buffer.get_buffer_number,
FileTypeName = buffer.get_buffer_filetype,
-- Git Provider
GitBranch = vcs.get_git_branch,
DiffAdd = vcs.diff_add,             -- support vim-gitgutter vim-signify gitsigns
DiffModified = vcs.diff_modified,   -- support vim-gitgutter vim-signify gitsigns
DiffRemove = vcs.diff_remove,       -- support vim-gitgutter vim-signify gitsigns
-- File Provider
LineColumn = fileinfo.line_column,
FileFormat = fileinfo.get_file_format,
FileEncode = fileinfo.get_file_encode,
FileSize = fileinfo.get_file_size,
FileIcon = fileinfo.get_file_icon,
FileName = fileinfo.get_current_file_name,
LinePercent = fileinfo.current_line_percent,
ScrollBar = extension.scrollbar_instance,
VistaPlugin = extension.vista_nearest,
-- Whitespace
Whitespace = whitespace.get_item,
-- Diagnostic Provider
DiagnosticError = diagnostic.get_diagnostic_error,
DiagnosticWarn = diagnostic.get_diagnostic_warn,
DiagnosticHint = diagnostic.get_diagnostic_hint,
DiagnosticInfo = diagnostic.get_diagnostic_info,
-- LSP
GetLspClient = lspclient.get_lsp_client,

-- public libs

require('galaxyline.provider_fileinfo').get_file_icon_color -- get file icon color
-- custom file icon with color
local my_icons = require('galaxyline.provider_fileinfo').define_file_icon() -- get file icon color
my_icons['your file type here'] = { color code, icon}
-- if your filetype does is not defined in neovim  you can use file extensions
my_icons['your file ext  in here'] = { color code, icon}

-- built-in condition
local condition = require('galaxyline.condition')
condition.buffer_not_empty  -- if buffer not empty return true else false
condition.hide_in_width  -- if winwidth(0)/ 2 > 40 true else false
-- find git root, you can use this to check if the project is a git workspace
condition.check_git_workspace() 

-- built-in theme
local colors = require('galaxyline.theme').default

bg = '#202328',
fg = '#bbc2cf',
yellow = '#ECBE7B',
cyan = '#008080',
darkblue = '#081633',
green = '#98be65',
orange = '#FF8800',
violet = '#a9a1e1',
magenta = '#c678dd',
blue = '#51afef';
red = '#ec5f67';
