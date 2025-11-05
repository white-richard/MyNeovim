return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- examples:
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.diagnostics.ruff,
                null_ls.builtins.formatting.black,
            },
        })
        vim.keymap.set({ "n", "v" }, "<leader>wf", function()
            vim.lsp.buf.format({ async = true })
        end, { desc = "Format buffer or selection" })
    end,
}
