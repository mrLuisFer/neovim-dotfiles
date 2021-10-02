require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.html.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.bashls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.cssls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.gopls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.jsonls.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.rust_analyzer.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.stylelint_lsp.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.svelte.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.tailwindcss.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.vuels.setup{on_attach=require'completion'.on_attach}

require'lspconfig'.yamlls.setup{on_attach=require'completion'.on_attach}
