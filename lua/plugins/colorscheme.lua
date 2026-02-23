-- ============================================================================
-- Colorscheme Configuration
-- ============================================================================

return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("tokyonight").setup({
        style = "night", -- storm, moon, night, day
        transparent = false,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          sidebars = "dark",
          floats = "dark",
        },
        sidebars = { "qf", "help", "neo-tree", "terminal" },
        dim_inactive = false,
        lualine_bold = true,
      })
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
