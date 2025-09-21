return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "calvera-nvim", -- or "tokyonight", "dracula", "catppuccin", "auto"
      },
    })
  end,
}

