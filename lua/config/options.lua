-- ============================================================================
-- Core Neovim Options
-- ============================================================================

-- Disable netrw (we use neo-tree instead)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Cursor line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.showmatch = true

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard (use system clipboard)
opt.clipboard = "unnamedplus"

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Consider - as part of word
opt.iskeyword:append("-")

-- Mouse support
opt.mouse = "a"

-- Disable swap and backup (optional, some prefer these off)
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- Persistent undo
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Faster completion
opt.updatetime = 250
opt.timeoutlen = 300

-- Better completion experience
opt.completeopt = "menuone,noselect"

-- Scrolloff (keep cursor away from edges)
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Show invisible characters
opt.list = true
opt.listchars = { tab = "| ", trail = ".", extends = ">", precedes = "<" }

-- Don't show mode (shown in statusline)
opt.showmode = false

-- Enable spell checking
opt.spell = true
opt.spelllang = "en_us"

-- Folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- File encoding
opt.fileencoding = "utf-8"

-- Command line height
opt.cmdheight = 1

-- Pop-up menu height
opt.pumheight = 10

-- Show matching brackets
opt.showmatch = true
