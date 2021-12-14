require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", 
  sync_install = false, 
  ignore_install = { "c" }, 
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

