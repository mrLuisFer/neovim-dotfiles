
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- LSP_LANGS:
require'lspconfig'.pyright.setup{
  capabilities = capabilities,
}

require'lspconfig'.html.setup{
  capabilities = capabilities,
}

require'lspconfig'.bashls.setup{
  capabilities = capabilities,
}

require'lspconfig'.cssls.setup{
  capabilities = capabilities,
}

require'lspconfig'.gopls.setup{
  capabilities = capabilities,
}

require'lspconfig'.jsonls.setup{
  capabilities = capabilities,
}

require'lspconfig'.rust_analyzer.setup{
  capabilities = capabilities,
}

require'lspconfig'.stylelint_lsp.setup{
  capabilities = capabilities,
}

require'lspconfig'.svelte.setup{
  capabilities = capabilities,
}

require'lspconfig'.tailwindcss.setup{
  capabilities = capabilities,
}

require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
}

require'lspconfig'.vuels.setup{
  capabilities = capabilities,
}

require'lspconfig'.yamlls.setup{
  capabilities = capabilities,
}

