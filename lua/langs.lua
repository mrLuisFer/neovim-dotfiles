--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.pyright.setup{}

require'lspconfig'.denols.setup{}

require'lspconfig'.cmake.setup{}

require'lspconfig'.gopls.setup{}

-- npm install -g graphql-language-service-cli
require'lspconfig'.graphql.setup{}

-- npm i -g vscode-langservers-extracted
require'lspconfig'.html.setup {
  capabilities = capabilities,
}

-- npm i -g vscode-langservers-extracted
require'lspconfig'.jsonls.setup {}

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{}

-- npm install -g vim-language-server
require'lspconfig'.vimls.setup{}

require'lspconfig'.tailwindcss.setup{}

-- npm install -g svelte-language-server
require'lspconfig'.svelte.setup{}

require'lspconfig'.rust_analyzer.setup{}

-- npm i -g vscode-langservers-extracted
require'lspconfig'.cssls.setup{}

require'lspconfig'.dartls.setup{}
