lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF

""" NOTE:
" :TSBufEnable {module} " enable module on current buffer
" :TSBufDisable {module} " disable module on current buffer
" :TSEnableAll {module} [{ft}] " enable module on every buffer. If filetype is specified, enable only for this filetype.
" :TSDisableAll {module} [{ft}] " disable module on every buffer. If filetype is specified, disable only for this filetype.
" :TSModuleInfo [{module}] " list information about modules state for each filetype

