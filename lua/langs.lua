local nvim_lsp = require('lspconfig')

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.pyright.setup{}

nvim_lsp.denols.setup{}

nvim_lsp.cmake.setup{}

nvim_lsp.gopls.setup{}

-- npm install -g graphql-language-service-cli
nvim_lsp.graphql.setup{}

-- npm i -g vscode-langservers-extracted
nvim_lsp.html.setup {
  capabilities = capabilities,
}

nvim_lsp.jsonls.setup {}

-- npm install -g typescript typescript-language-server
nvim_lsp.tsserver.setup{
  on_attach = on_attach
}

-- npm install -g vim-language-server
nvim_lsp.vimls.setup{}

nvim_lsp.tailwindcss.setup{}

-- npm install -g svelte-language-server
nvim_lsp.svelte.setup{}

nvim_lsp.rust_analyzer.setup{}

nvim_lsp.cssls.setup{}

nvim_lsp.dartls.setup{}

-- npm i -g eslint_d prettier
nvim_lsp.diagnosticls.setup {
  on_attach = on_attach,
  filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'markdown', 'pandoc' },
  init_options = {
    linters = {
      eslint = {
        command = 'eslint_d',
        rootPatterns = { '.git' },
        debounce = 100,
        args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
        sourceName = 'eslint_d',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '[eslint] ${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {
          [2] = 'error',
          [1] = 'warning'
        }
      },
    },
    filetypes = {
      javascript = 'eslint',
      javascriptreact = 'eslint',
      typescript = 'eslint',
      typescriptreact = 'eslint',
    },
    formatters = {
      eslint_d = {
        command = 'eslint_d',
        args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
        rootPatterns = { '.git' },
      },
      prettier = {
        command = 'prettier',
        args = { '--stdin-filepath', '%filename' }
      }
    },
    formatFiletypes = {
      css = 'prettier',
      javascript = 'eslint_d',
      javascriptreact = 'eslint_d',
      json = 'prettier',
      scss = 'prettier',
      less = 'prettier',
      typescript = 'eslint_d',
      typescriptreact = 'eslint_d',
      json = 'prettier',
      markdown = 'prettier',
    }
  }
}

