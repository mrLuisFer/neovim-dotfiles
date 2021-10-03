local on_attach = function(client, bufnr)
  require'completion'.on_attach(client, bufnr)

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

require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.html.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.bashls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.cssls.setup{on_attach=require'completion'.on_attach}

--require'lspconfig'.gopls.setup{on_attach=require'completion'.on_attach}
-- REF: https://github.com/golang/tools/blob/master/gopls/doc/vim.md
require'lspconfig'.gopls.setup {
    cmd = {"gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }

require'lspconfig'.jsonls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.rust_analyzer.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.stylelint_lsp.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.svelte.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.tailwindcss.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.vuels.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.yamlls.setup{on_attach=require'completion'.on_attach}
