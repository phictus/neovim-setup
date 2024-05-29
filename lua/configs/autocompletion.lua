local cmp = require("cmp")

cmp.setup {
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources(
        {
            { name = "nvim_lsp" },
            { name = "luasnip" },
        },
        {
            { name = "buffer" },
        }
    ),
}

require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup { capabilities = capabilities }
lspconfig.cmake.setup { capabilities = capabilities }
lspconfig.lua_ls.setup { capabilities = capabilities }
lspconfig.omnisharp.setup { capabilities = capabilities }
lspconfig.pyright.setup { capabilities = capabilities }
lspconfig.rust_analyzer.setup { capabilities = capabilities }
lspconfig.texlab.setup { capabilities = capabilities }
lspconfig.zls.setup { capabilities = capabilities }
