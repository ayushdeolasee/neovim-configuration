-- ============================================================================
-- Neovim Configuration
-- ============================================================================

-- Set leader key early (before lazy.nvim)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load core configurations
require("config.options")
require("config.keymaps")
require("config.lazy")
