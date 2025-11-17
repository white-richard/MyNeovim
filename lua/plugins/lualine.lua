return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "kanagawa", -- or "tokyonight", "dracula", "catppuccin", "auto", "kanagawa"
      },
    })
  end,
}

