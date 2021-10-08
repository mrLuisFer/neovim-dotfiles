local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {'tsserver', 'bashls', 'cssls', 'gopls', 'html', 'pylsp', 'vimls', 'volar', 'vuels', 'svelte', 'tailwindcss'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

-- REFERENCE: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
--
-- npm i -g bash-language-server
require'lspconfig'.bashls.setup{on_attach=on_attach}

-- npm i -g vscode-langservers-extracted
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
	on_attach=on_attach,
}

-- npm install -g dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup{on_attach=on_attach}

-- https://github.com/golang/tools/tree/master/gopls
require'lspconfig'.gopls.setup{on_attach=on_attach}

-- npm install -g graphql-language-service-cli
-- require'lspconfig'.graphql.setup{}

-- npm i -g vscode-langservers-extracted
require'lspconfig'.html.setup {
  capabilities = capabilities,
	on_attach=on_attach,
}

-- npm i -g vscode-langservers-extracted
require'lspconfig'.jsonls.setup {
		capabilities = capabilities,
		on_attach=on_attach,
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
        end
      }
    }
}

-- pip install python-lsp-server
require'lspconfig'.pylsp.setup{on_attach=on_attach}

-- npm i -g stylelint-lsp
require'lspconfig'.stylelint_lsp.setup{on_attach=on_attach}

-- npm install -g svelte-language-server
require'lspconfig'.svelte.setup{on_attach=on_attach}

-- npm install -g @tailwindcss/language-server
require'lspconfig'.tailwindcss.setup{on_attach=on_attach}

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{on_attach=on_attach}

-- npm install -g vim-language-server
require'lspconfig'.vimls.setup{on_attach=on_attach}

-- npm install -g @volar/server
require'lspconfig'.volar.setup{on_attach=on_attach}

-- npm install -g vls
require'lspconfig'.vuels.setup{on_attach=on_attach}

-- yarn global add yaml-language-server
require'lspconfig'.yamlls.setup{on_attach=on_attach}

