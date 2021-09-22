lua << EOF
  require'lspconfig'.bashls.setup{}

  --Enable (broadcasting) snippet capability for completion
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  require'lspconfig'.cssls.setup {
    capabilities = capabilities,
  }

  --Enable (broadcasting) snippet capability for completion
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  require'lspconfig'.html.setup {
  capabilities = capabilities,
}


  require'lspconfig'.denols.setup{}

  require'lspconfig'.graphql.setup{}

  require'lspconfig'.intelephense.setup{}

  require'lspconfig'.pyright.setup{}

  require'lspconfig'.pylsp.setup{}

  require'lspconfig'.gopls.setup{}

  require'lspconfig'.stylelint_lsp.setup{}

  require'lspconfig'.svelte.setup{}

  require'lspconfig'.tailwindcss.setup{}

  require'lspconfig'.tsserver.setup{}

  require'lspconfig'.vimls.setup{}

  require'lspconfig'.vuels.setup{}

  require'lspconfig'.yamlls.setup{}

EOF
