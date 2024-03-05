require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "tsserver" },
    -- ensure_installed = { "tsserver", "lua_ls", "jdtls", "angularls", "bashls"},
    automatic_installation = true,
})
