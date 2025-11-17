return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "williamboman/mason.nvim",
        "jay-babu/mason-null-ls.nvim",
    },
    config = function()
        require("mason").setup()

        -- Will auto-install Ruff if it's listed in your none-ls sources
        require("mason-null-ls").setup({
            ensure_installed = { "ruff" }, -- THIS installs the Ruff binary
            automatic_installation = true,
        })

        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint_d,

                null_ls.builtins.formatting.black,
            },
        })
    end,
}
