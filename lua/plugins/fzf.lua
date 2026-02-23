-- ============================================================================
-- FZF Integration
-- ============================================================================

return {
  {
    "junegunn/fzf",
    build = function()
      vim.fn["fzf#install"]()
    end,
  },
  {
    "junegunn/fzf.vim",
    dependencies = { "junegunn/fzf" },
    config = function()
      -- FZF configuration
      vim.g.fzf_layout = { window = { width = 0.9, height = 0.8 } }
      vim.g.fzf_preview_window = { "right:50%", "ctrl-/" }

      -- Keymaps for fzf.vim
      vim.keymap.set("n", "<leader>pf", ":Files<CR>", { desc = "FZF Files" })
      vim.keymap.set("n", "<leader>pg", ":GFiles<CR>", { desc = "FZF Git Files" })
      vim.keymap.set("n", "<leader>pb", ":Buffers<CR>", { desc = "FZF Buffers" })
      vim.keymap.set("n", "<leader>pl", ":Lines<CR>", { desc = "FZF Lines" })
      vim.keymap.set("n", "<leader>pr", ":Rg<CR>", { desc = "FZF Ripgrep" })
      vim.keymap.set("n", "<leader>ph", ":History<CR>", { desc = "FZF History" })
      vim.keymap.set("n", "<leader>pc", ":Commands<CR>", { desc = "FZF Commands" })
    end,
  },
}
