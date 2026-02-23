# Neovim Configuration Help Guide

This document provides a comprehensive overview of all plugins installed in your Neovim configuration, their keybindings, and how to use them effectively.

**Leader Key: `<Space>`**

> Tip: Press `<Space>` and wait 300ms to see all available keybindings via which-key.

---

## Table of Contents

1. [Plugin Manager (lazy.nvim)](#1-plugin-manager-lazynvim)
2. [File Explorer (Neo-tree)](#2-file-explorer-neo-tree)
3. [Fuzzy Finding (Telescope)](#3-fuzzy-finding-telescope)
4. [FZF Integration](#4-fzf-integration)
5. [LSP (Language Server Protocol)](#5-lsp-language-server-protocol)
6. [Autocompletion (nvim-cmp)](#6-autocompletion-nvim-cmp)
7. [Syntax Highlighting (Treesitter)](#7-syntax-highlighting-treesitter)
8. [Git Integration](#8-git-integration)
9. [Terminal (ToggleTerm)](#9-terminal-toggleterm)
10. [Debugging (DAP)](#10-debugging-dap)
11. [Formatting & Linting](#11-formatting--linting)
12. [Code Editing Utilities](#12-code-editing-utilities)
13. [UI Enhancements](#13-ui-enhancements)
14. [Diagnostics (Trouble)](#14-diagnostics-trouble)
15. [GitHub Copilot](#15-github-copilot)
16. [General Keybindings](#16-general-keybindings)
17. [Commands Reference](#17-commands-reference)

---

## 1. Plugin Manager (lazy.nvim)

**lazy.nvim** is a modern plugin manager for Neovim that provides fast startup times and lazy-loading.

### Commands

| Command | Description |
|---------|-------------|
| `:Lazy` | Open the lazy.nvim dashboard |
| `:Lazy sync` | Install, update, and clean plugins |
| `:Lazy update` | Update all plugins |
| `:Lazy clean` | Remove unused plugins |
| `:Lazy check` | Check for plugin updates |
| `:Lazy profile` | View startup profiling |
| `:Lazy health` | Run health checks |

### Dashboard Navigation

When in the Lazy dashboard:
- `<CR>` - Expand/collapse plugin details
- `u` - Update plugins
- `s` - Sync plugins
- `c` - Check for updates
- `x` - Clean unused plugins
- `q` - Close dashboard

---

## 2. File Explorer (Neo-tree)

**Neo-tree** is a modern file explorer with git integration and diagnostics.

### Keybindings

| Key | Description |
|-----|-------------|
| `<leader>e` | Toggle file explorer |
| `<leader>o` | Focus file explorer |

### Inside Neo-tree

| Key | Description |
|-----|-------------|
| `<CR>` or `o` | Open file/folder |
| `a` | Add (create) new file/folder |
| `d` | Delete file/folder |
| `r` | Rename file/folder |
| `y` | Copy file to clipboard |
| `x` | Cut file to clipboard |
| `p` | Paste file from clipboard |
| `c` | Copy file (prompts for destination) |
| `m` | Move file (prompts for destination) |
| `q` | Close Neo-tree |
| `R` | Refresh |
| `?` | Show help |
| `H` | Toggle hidden files |
| `/` | Filter/search |
| `<` | Navigate up a directory |
| `.` | Set root to current directory |
| `P` | Toggle preview |
| `s` | Open in vertical split |
| `S` | Open in horizontal split |
| `t` | Open in new tab |

### Git Status Symbols

| Symbol | Meaning |
|--------|---------|
| `` | Added |
| `` | Modified |
| `` | Deleted |
| `➜` | Renamed |
| `★` | Untracked |
| `◌` | Ignored |
| `✗` | Unstaged |
| `✓` | Staged |
| `` | Conflict |

---

## 3. Fuzzy Finding (Telescope)

**Telescope** is a highly extendable fuzzy finder with previews.

### Keybindings

| Key | Description |
|-----|-------------|
| `<leader>ff` | Find files in project |
| `<leader>fg` | Live grep (search text in files) |
| `<leader>fb` | Find open buffers |
| `<leader>fh` | Search help tags |
| `<leader>fo` | Find recent files (oldfiles) |
| `<leader>fc` | Find string under cursor |
| `<leader>fs` | Git status |
| `<leader>fr` | Resume last search |
| `<leader>ft` | Find TODOs in project |

### Inside Telescope

| Key | Description |
|-----|-------------|
| `<C-j>` | Move to next item |
| `<C-k>` | Move to previous item |
| `<CR>` | Open selected item |
| `<C-x>` | Open in horizontal split |
| `<C-v>` | Open in vertical split |
| `<C-t>` | Open in new tab |
| `<C-q>` | Send selected to quickfix list |
| `<Esc>` | Close Telescope |
| `<C-/>` | Toggle preview |
| `<C-u>` | Scroll preview up |
| `<C-d>` | Scroll preview down |

### Common Telescope Pickers (Commands)

```vim
:Telescope find_files          " Find files
:Telescope live_grep           " Search text
:Telescope buffers             " List buffers
:Telescope help_tags           " Search help
:Telescope keymaps             " List all keymaps
:Telescope commands            " List all commands
:Telescope git_commits         " Browse git commits
:Telescope git_branches        " Browse git branches
:Telescope lsp_references      " Find LSP references
:Telescope lsp_definitions     " Find LSP definitions
:Telescope diagnostics         " List diagnostics
```

---

## 4. FZF Integration

**fzf.vim** provides an alternative fuzzy finder using the FZF binary you have installed.

### Keybindings

| Key | Description |
|-----|-------------|
| `<leader>pf` | FZF find files |
| `<leader>pg` | FZF git files |
| `<leader>pb` | FZF buffers |
| `<leader>pl` | FZF search lines in all buffers |
| `<leader>pr` | FZF ripgrep search |
| `<leader>ph` | FZF file history |
| `<leader>pc` | FZF commands |

### Inside FZF Window

| Key | Description |
|-----|-------------|
| `<C-j>` | Move down |
| `<C-k>` | Move up |
| `<CR>` | Open file |
| `<C-x>` | Open in split |
| `<C-v>` | Open in vertical split |
| `<C-t>` | Open in tab |
| `<C-/>` | Toggle preview |
| `<Esc>` | Close |

### Commands

```vim
:Files [PATH]     " Find files (optional path)
:GFiles           " Git files (respects .gitignore)
:Buffers          " Open buffers
:Lines            " Lines in loaded buffers
:BLines           " Lines in current buffer
:Rg [PATTERN]     " Ripgrep search
:History          " File history
:History:         " Command history
:History/         " Search history
:Commands         " All commands
:Maps             " All mappings
```

---

## 5. LSP (Language Server Protocol)

**Mason + nvim-lspconfig** provides IDE-like features: go-to-definition, code actions, diagnostics, and more.

### Pre-installed Language Servers

- `lua_ls` - Lua
- `ts_ls` - TypeScript/JavaScript
- `pyright` - Python
- `html` - HTML
- `cssls` - CSS
- `tailwindcss` - Tailwind CSS
- `jsonls` - JSON
- `bashls` - Bash/Shell

### LSP Keybindings

| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find references |
| `gi` | Go to implementation |
| `K` | Show hover documentation |
| `<C-k>` | Show signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |
| `<leader>D` | Go to type definition |
| `<leader>d` | Show diagnostics in float |
| `<leader>f` | Format document |
| `[d` | Go to previous diagnostic |
| `]d` | Go to next diagnostic |

### Mason Commands

| Command | Description |
|---------|-------------|
| `:Mason` | Open Mason UI |
| `:MasonInstall <server>` | Install a server |
| `:MasonUninstall <server>` | Uninstall a server |
| `:MasonUpdate` | Update all servers |
| `:LspInfo` | Show attached LSP clients |
| `:LspStart` | Start LSP for current buffer |
| `:LspStop` | Stop LSP for current buffer |
| `:LspRestart` | Restart LSP |

### Diagnostic Signs

| Icon | Meaning |
|------|---------|
| ` ` | Error |
| ` ` | Warning |
| `󰠠 ` | Hint |
| ` ` | Info |

---

## 6. Autocompletion (nvim-cmp)

**nvim-cmp** provides intelligent autocompletion with snippet support.

### Completion Sources (in priority order)

1. `nvim_lsp` - LSP completions
2. `luasnip` - Snippets
3. `buffer` - Words from current buffer
4. `path` - File paths

### Keybindings (in insert mode)

| Key | Description |
|-----|-------------|
| `<C-Space>` | Trigger completion |
| `<C-j>` | Select next item |
| `<C-k>` | Select previous item |
| `<Tab>` | Select next item / expand snippet / jump to next snippet placeholder |
| `<S-Tab>` | Select previous item / jump to previous snippet placeholder |
| `<CR>` | Confirm selection |
| `<C-e>` | Abort/close completion |
| `<C-b>` | Scroll docs up |
| `<C-f>` | Scroll docs down |

### Command Line Completion

Completion also works in command mode (`:`) and search (`/`, `?`):
- Type `:` and start typing to see command completions
- Use `<Tab>` to cycle through options

### Snippets (LuaSnip)

Pre-loaded snippets from `friendly-snippets` are available for most languages.

**Examples:**
- JavaScript: `cl` expands to `console.log()`
- Python: `def` expands to a function definition
- HTML: `html:5` expands to HTML5 boilerplate

After expanding a snippet:
- `<Tab>` - Jump to next placeholder
- `<S-Tab>` - Jump to previous placeholder

---

## 7. Syntax Highlighting (Treesitter)

**Treesitter** provides advanced syntax highlighting, code folding, and text objects.

### Installed Parsers

lua, vim, vimdoc, javascript, typescript, tsx, python, html, css, json, yaml, markdown, bash, c, cpp, rust, go, regex, gitignore

### Incremental Selection

| Key | Description |
|-----|-------------|
| `<C-Space>` | Initialize/expand selection |
| `<BS>` | Shrink selection |

### Text Objects

These work with operators like `d` (delete), `c` (change), `y` (yank), `v` (visual select):

| Key | Description |
|-----|-------------|
| `af` | Select around function |
| `if` | Select inside function |
| `ac` | Select around class |
| `ic` | Select inside class |
| `aa` | Select around argument/parameter |
| `ia` | Select inside argument/parameter |

**Examples:**
- `daf` - Delete a function
- `cif` - Change inside function
- `vac` - Visually select around class
- `yia` - Yank inside argument

### Movement

| Key | Description |
|-----|-------------|
| `]m` | Go to next function start |
| `]M` | Go to next function end |
| `[m` | Go to previous function start |
| `[M` | Go to previous function end |
| `]]` | Go to next class start |
| `][` | Go to next class end |
| `[[` | Go to previous class start |
| `[]` | Go to previous class end |

### Commands

```vim
:TSInstall <language>    " Install a parser
:TSUpdate               " Update all parsers
:TSInstallInfo          " Show installed parsers
:TSHighlightCapturesUnderCursor  " Debug highlighting
```

---

## 8. Git Integration

### Gitsigns

**Gitsigns** shows git changes in the sign column and provides hunk operations.

#### Sign Column Symbols

| Symbol | Meaning |
|--------|---------|
| `│` | Added line |
| `│` | Changed line |
| `_` | Deleted line |
| `‾` | Top-deleted line |
| `~` | Changed-deleted line |
| `┆` | Untracked line |

#### Keybindings

| Key | Description |
|-----|-------------|
| `]c` | Go to next hunk |
| `[c` | Go to previous hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hu` | Undo stage hunk |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line (full) |
| `<leader>hd` | Diff this |

**Note:** Current line blame is shown automatically at the end of lines (after 500ms delay).

### LazyGit

**LazyGit** is a terminal UI for git.

| Key | Description |
|-----|-------------|
| `<leader>gg` | Open LazyGit |

> Note: Requires `lazygit` to be installed (`brew install lazygit`)

---

## 9. Terminal (ToggleTerm)

**ToggleTerm** provides a toggleable terminal inside Neovim.

### Keybindings

| Key | Description |
|-----|-------------|
| `<C-\>` | Toggle floating terminal |
| `<leader>tf` | Open floating terminal |
| `<leader>th` | Open horizontal terminal |
| `<leader>tv` | Open vertical terminal |
| `<leader>tg` | Open LazyGit in terminal |

### Inside Terminal

| Key | Description |
|-----|-------------|
| `<Esc>` | Exit terminal mode (go to normal mode) |
| `<C-h>` | Move to left window |
| `<C-j>` | Move to bottom window |
| `<C-k>` | Move to top window |
| `<C-l>` | Move to right window |

### Tips

- You can run multiple terminals: `2<C-\>` opens terminal #2
- The terminal persists between toggles
- Use `:ToggleTermSendCurrentLine` to send current line to terminal
- Use `:ToggleTermSendVisualSelection` to send visual selection

---

## 10. Debugging (DAP)

**nvim-dap** provides debugging support with a UI.

### Pre-installed Debug Adapters

- Python (debugpy)
- Node.js (node2)
- Chrome

### Keybindings

| Key | Description |
|-----|-------------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue / Start debugging |
| `<leader>di` | Step into |
| `<leader>do` | Step over |
| `<leader>dO` | Step out |
| `<leader>dr` | Restart debugging |
| `<leader>dt` | Terminate debugging |
| `<leader>du` | Toggle DAP UI |

### DAP UI Layout

When debugging starts, the UI opens automatically:
- **Left panel**: Scopes, breakpoints, stacks, watches
- **Bottom panel**: REPL, console

### Setting Up Debug Configurations

For most languages, you'll need a launch configuration. Create a `.vscode/launch.json` or configure in your plugin file.

**Example Python configuration:**
```lua
dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = 'Launch file',
    program = '${file}',
    pythonPath = function()
      return '/usr/bin/python3'
    end,
  },
}
```

---

## 11. Formatting & Linting

### Conform (Formatting)

**Conform** handles code formatting with format-on-save.

#### Configured Formatters

| Language | Formatter |
|----------|-----------|
| Lua | stylua |
| Python | black |
| JavaScript/TypeScript | prettier |
| JSON | prettier |
| HTML | prettier |
| CSS | prettier |
| Markdown | prettier |
| YAML | prettier |

#### Keybindings

| Key | Description |
|-----|-------------|
| `<leader>cf` | Format file or selection |

#### Behavior

- **Format on save** is enabled by default (500ms timeout)
- Falls back to LSP formatting if no formatter is configured

#### Installing Formatters

Formatters need to be installed separately:
```bash
# Using npm
npm install -g prettier

# Using pip
pip install black

# Using cargo
cargo install stylua
```

Or use Mason:
```vim
:MasonInstall prettier black stylua
```

### Nvim-lint (Linting)

**Nvim-lint** runs linters asynchronously.

#### Configured Linters

| Language | Linter |
|----------|--------|
| JavaScript/TypeScript | eslint_d |
| Python | pylint |

#### Keybindings

| Key | Description |
|-----|-------------|
| `<leader>cl` | Manually trigger linting |

#### Behavior

Linting runs automatically on:
- `BufEnter` - When entering a buffer
- `BufWritePost` - After saving
- `InsertLeave` - When leaving insert mode

---

## 12. Code Editing Utilities

### nvim-autopairs

Automatically inserts matching pairs: `()`, `[]`, `{}`, `""`, `''`, etc.

Works intelligently with Treesitter to avoid inserting pairs inside strings.

### nvim-surround

Surround text with pairs or change/delete surrounding pairs.

#### Add Surrounds

| Command | Before | After |
|---------|--------|-------|
| `ysiw"` | `word` | `"word"` |
| `ysiw)` | `word` | `(word)` |
| `ysiw}` | `word` | `{word}` |
| `yss"` | `whole line` | `"whole line"` |
| `yS$"` | (to end of line) | Surrounds to end |

In visual mode, select text then press `S"` to surround.

#### Change Surrounds

| Command | Before | After |
|---------|--------|-------|
| `cs"'` | `"hello"` | `'hello'` |
| `cs)]` | `(hello)` | `[hello]` |
| `cst<div>` | `<p>hello</p>` | `<div>hello</div>` |

#### Delete Surrounds

| Command | Before | After |
|---------|--------|-------|
| `ds"` | `"hello"` | `hello` |
| `ds)` | `(hello)` | `hello` |
| `dst` | `<p>hello</p>` | `hello` |

### Comment.nvim

Toggle comments with Treesitter-aware context.

| Key | Description |
|-----|-------------|
| `gcc` | Toggle line comment |
| `gbc` | Toggle block comment |
| `gc` (visual) | Toggle comment on selection |
| `gb` (visual) | Toggle block comment on selection |
| `gcO` | Add comment above |
| `gco` | Add comment below |
| `gcA` | Add comment at end of line |

### todo-comments.nvim

Highlights and searches for TODO, FIXME, HACK, etc. in comments.

| Key | Description |
|-----|-------------|
| `<leader>ft` | Find all TODOs with Telescope |

**Keywords:**
- `TODO:` - Things to do
- `FIXME:` - Broken code
- `HACK:` - Hacky code
- `WARN:` / `WARNING:` - Warnings
- `PERF:` / `PERFORMANCE:` - Performance issues
- `NOTE:` / `INFO:` - Notes

### mini.ai

Enhanced text objects for more precise selections.

Works with `a` (around) and `i` (inside) motions:
- `va)` - Select around parentheses
- `ci"` - Change inside quotes
- `dif` - Delete inside function (via Treesitter)

### vim-illuminate

Automatically highlights other uses of the word under the cursor.

- Highlights appear after 200ms delay
- Uses LSP references when available

### nvim-colorizer

Shows color previews for color codes in your code.

Supports: hex (`#fff`), rgb, rgba, hsl, Tailwind classes, and more.

---

## 13. UI Enhancements

### Catppuccin (Colorscheme)

The current theme is **Catppuccin Mocha** (dark theme).

To change flavors, edit `lua/plugins/colorscheme.lua`:
- `latte` - Light theme
- `frappe` - Light-dark theme
- `macchiato` - Dark theme
- `mocha` - Darkest theme (default)

### Lualine (Statusline)

Shows at the bottom of the screen:
- **Left**: Mode, branch, diff, diagnostics
- **Center**: Filename with path
- **Right**: Encoding, file format, filetype, progress, location

### Bufferline (Tab Line)

Shows open buffers as tabs at the top.

| Key | Description |
|-----|-------------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bn` | New buffer |

Click on tabs with mouse to switch buffers.

### indent-blankline

Shows vertical lines at each indentation level. The current scope is highlighted.

### which-key

Shows available keybindings in a popup when you press a key and wait.

- Press `<leader>` and wait to see all leader keybindings
- Organized by category: Find, Git, Split, Tab, Buffer, Code

### Alpha (Dashboard)

Shown when opening Neovim without a file.

| Key | Action |
|-----|--------|
| `f` | Find file |
| `e` | New file |
| `r` | Recent files |
| `g` | Find text |
| `c` | Edit configuration |
| `l` | Open Lazy |
| `q` | Quit |

### nvim-notify

Replaces default notifications with beautiful popups.

Notifications appear in the top-right corner and auto-dismiss after 3 seconds.

### neoscroll

Provides smooth scrolling instead of jumpy default scrolling.

Works with `<C-d>`, `<C-u>`, `<C-b>`, `<C-f>`, etc.

---

## 14. Diagnostics (Trouble)

**Trouble** provides a pretty list for diagnostics, references, and more.

### Keybindings

| Key | Description |
|-----|-------------|
| `<leader>xx` | Toggle workspace diagnostics |
| `<leader>xX` | Toggle buffer diagnostics |
| `<leader>xs` | Toggle symbols |
| `<leader>xl` | Toggle LSP definitions/references |
| `<leader>xL` | Toggle location list |
| `<leader>xQ` | Toggle quickfix list |

### Inside Trouble

| Key | Description |
|-----|-------------|
| `q` | Close |
| `<CR>` | Jump to item |
| `o` | Jump and close |
| `j/k` | Navigate |
| `<Tab>` | Toggle fold |
| `r` | Refresh |

---

## 15. GitHub Copilot

**Copilot** provides AI-powered code suggestions.

### Keybindings

| Key | Mode | Description |
|-----|------|-------------|
| `<C-y>` | Insert | Accept Copilot suggestion |
| `<leader>cc` | Normal | Toggle Copilot Chat |
| `<leader>ce` | Normal/Visual | Explain selected code |
| `<leader>cr` | Normal/Visual | Review selected code |
| `<leader>cx` | Normal/Visual | Fix selected code |
| `<leader>co` | Normal/Visual | Optimize selected code |

### Copilot Chat Commands

```vim
:CopilotChat           " Open chat
:CopilotChatOpen       " Open chat window
:CopilotChatToggle     " Toggle chat window
:CopilotChatExplain    " Explain selected code
:CopilotChatReview     " Review selected code
:CopilotChatFix        " Fix selected code
:CopilotChatOptimize   " Optimize selected code
:CopilotChatTests      " Generate tests
:CopilotChatDocs       " Generate documentation
```

### Tips

- Select code in visual mode before running chat commands
- Copilot suggestions appear as ghost text; press `<C-y>` to accept
- Use `:Copilot status` to check if Copilot is connected
- First-time setup: run `:Copilot auth` to authenticate

---

## 16. General Keybindings

These are custom keybindings defined in `lua/config/keymaps.lua`.

### Escape Shortcuts

| Key | Mode | Description |
|-----|------|-------------|
| `jk` | Insert | Exit insert mode |
| `jj` | Insert | Exit insert mode |

### File Operations

| Key | Description |
|-----|-------------|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>Q` | Force quit all |

### Window/Split Management

| Key | Description |
|-----|-------------|
| `<leader>sv` | Split vertically |
| `<leader>sh` | Split horizontally |
| `<leader>se` | Make splits equal size |
| `<leader>sx` | Close current split |
| `<C-h>` | Move to left split |
| `<C-j>` | Move to bottom split |
| `<C-k>` | Move to top split |
| `<C-l>` | Move to right split |
| `<C-Up>` | Increase height |
| `<C-Down>` | Decrease height |
| `<C-Left>` | Decrease width |
| `<C-Right>` | Increase width |

### Tab Management

| Key | Description |
|-----|-------------|
| `<leader>to` | Open new tab |
| `<leader>tx` | Close current tab |
| `<leader>tn` | Next tab |
| `<leader>tp` | Previous tab |
| `<leader>tf` | Open current buffer in new tab |

### Buffer Management

| Key | Description |
|-----|-------------|
| `<S-l>` | Next buffer |
| `<S-h>` | Previous buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bn` | New buffer |

### Visual Mode

| Key | Description |
|-----|-------------|
| `<` | Indent left (stay in visual) |
| `>` | Indent right (stay in visual) |
| `J` | Move selection down |
| `K` | Move selection up |
| `p` | Paste without yanking replaced text |

### Navigation

| Key | Description |
|-----|-------------|
| `<C-d>` | Scroll down (centered) |
| `<C-u>` | Scroll up (centered) |
| `n` | Next search result (centered) |
| `N` | Previous search result (centered) |
| `<C-a>` | Select all |

### Misc

| Key | Description |
|-----|-------------|
| `<leader>nh` | Clear search highlights |
| `<leader>+` | Increment number |
| `<leader>-` | Decrement number |
| `x` | Delete character (no yank) |
| `J` | Join lines (cursor stays) |

---

## 17. Commands Reference

### Quick Command Cheat Sheet

```vim
" Plugin Manager
:Lazy                  " Open lazy.nvim

" File Explorer
:Neotree toggle        " Toggle file tree
:Neotree focus         " Focus file tree

" Finding
:Telescope find_files  " Find files
:Telescope live_grep   " Search in files
:Telescope buffers     " List buffers

" LSP
:Mason                 " Manage LSP servers
:LspInfo              " Show LSP status
:LspRestart           " Restart LSP

" Formatting
:Format               " Format file (if using command)
:ConformInfo          " Show conform status

" Git
:LazyGit              " Open lazygit
:Gitsigns toggle_current_line_blame  " Toggle blame

" Terminal
:ToggleTerm           " Toggle terminal

" Diagnostics
:Trouble              " Open trouble

" Treesitter
:TSInstallInfo        " Show installed parsers
:TSUpdate             " Update parsers

" Copilot
:Copilot status       " Check Copilot status
:Copilot auth         " Authenticate Copilot
```

---

## Tips & Tricks

### 1. Use which-key
Press `<leader>` (Space) and wait. A popup will show all available commands organized by category.

### 2. Learn the patterns
- `<leader>f` - Find/search things
- `<leader>g` - Git operations
- `<leader>h` - Git hunk operations
- `<leader>s` - Split operations
- `<leader>t` - Tab/terminal operations
- `<leader>b` - Buffer operations
- `<leader>c` - Code operations
- `<leader>d` - Debug operations
- `<leader>x` - Trouble/diagnostics

### 3. Treesitter text objects
Use `daf` to delete a function, `cif` to change inside a function, `vac` to select around a class. These are powerful once you learn them.

### 4. Telescope is your friend
Almost anything can be searched with Telescope. Try `:Telescope ` and press `<Tab>` to see all available pickers.

### 5. Format on save
Files are automatically formatted on save. If a formatter isn't installed, install it via Mason (`:MasonInstall prettier`).

### 6. Check health
Run `:checkhealth` to diagnose any issues with your setup.

---

## Troubleshooting

### Plugins not loading?
```vim
:Lazy sync
```

### LSP not working?
```vim
:LspInfo    " Check if LSP is attached
:Mason      " Install missing servers
```

### Treesitter errors?
```vim
:TSUpdate   " Update all parsers
```

### Icons not showing?
Make sure you have a Nerd Font installed and configured in your terminal.

### Slow startup?
```vim
:Lazy profile   " See what's taking time
```

---

## File Locations

| File | Purpose |
|------|---------|
| `~/.config/nvim/init.lua` | Main entry point |
| `~/.config/nvim/lua/config/options.lua` | Neovim options |
| `~/.config/nvim/lua/config/keymaps.lua` | Custom keybindings |
| `~/.config/nvim/lua/config/lazy.lua` | Plugin manager setup |
| `~/.config/nvim/lua/plugins/*.lua` | Individual plugin configs |
| `~/.local/share/nvim/` | Plugin data, LSP servers |
| `~/.local/state/nvim/` | State files, undo history |

---

Happy coding!
