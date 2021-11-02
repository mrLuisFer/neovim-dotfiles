local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  -- Mappings.
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end  

  local opts = { noremap=true, silent=true }  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)

  protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }
end

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
nvim_lsp.pyright.setup{
  capabilities = capabilities,
}

nvim_lsp.bashls.setup{
  capabilities = capabilities,
}

nvim_lsp.cssls.setup{
  capabilities = capabilities,
}

nvim_lsp.gopls.setup{
  capabilities = capabilities,
}

nvim_lsp.jsonls.setup{
  capabilities = capabilities,
}

nvim_lsp.rust_analyzer.setup{
  capabilities = capabilities,
}

nvim_lsp.svelte.setup{
  capabilities = capabilities,
}

nvim_lsp.tsserver.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

nvim_lsp.vuels.setup{
  capabilities = capabilities,
}

nvim_lsp.yamlls.setup{
  capabilities = capabilities,
}

nvim_lsp.vimls.setup{
  capabilities = capabilities,
}

nvim_lsp.tailwindcss.setup{
  capabilities = capabilities,
}

nvim_lsp.dockerls.setup{
  capabilities = capabilities,
}

nvim_lsp.volar.setup{
  capabilities = capabilities,
}


-- INFO: Install the next packages:
-- npm install -g diagnostic-languageserver
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

