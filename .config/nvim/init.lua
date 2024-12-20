if vim.g.vscode then
  -- VSCode Neovim
  require "user.vscode_keymaps"
else
  -- Ordinary Neovim
  
-- =======================
-- Auto-install packer.nvim
-- =======================
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- =======================
-- Plugin Management
-- =======================
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- LSP and Completion
  use 'neovim/nvim-lspconfig'        -- LSP configurations
  use 'hrsh7th/nvim-cmp'             -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'         -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip'     -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'             -- Snippets plugin
  -- use 'ellisonleao/gruvbox.nvim'
   use { "catppuccin/nvim", as = "catppuccin" }

  -- Syntax Highlighting and Treesitter
  use { 
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate' 
  }

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- File Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Git Integration
  use 'lewis6991/gitsigns.nvim'

  -- Status Line
  use 'nvim-lualine/lualine.nvim'

  -- Automatically set up plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- Apply Gruvbox colorscheme
-- vim.cmd[[colorscheme gruvbox]]
-- vim.cmd[[colorscheme tokyonight]]
vim.cmd[[colorscheme catppuccin]]
-- Customize Line Numbers' Color
vim.cmd [[highlight LineNr guifg=#6C6F7D]]  -- Change line number color (adjust as needed)
-- vim.cmd [[highlight CursorLineNr guifg=#F8F8F2]]  -- Highlight the current line number

-- =======================
-- General Neovim Settings
-- =======================
-- Line numbers
vim.opt.number = true              -- Show line numbers
vim.opt.relativenumber = true      -- Relative line numbers

-- Tabs and Indentation
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.shiftwidth = 4             -- Shift 4 spaces when tab
vim.opt.tabstop = 4                -- 1 tab = 4 spaces
vim.opt.smartindent = true         -- Autoindent new lines

-- UI Enhancements
vim.opt.termguicolors = true       -- Enable 24-bit colors
vim.opt.cursorline = true          -- Highlight the current line
vim.opt.signcolumn = 'yes'         -- Always show the sign column
vim.opt.wrap = false               -- Disable line wrapping
vim.opt.scrolloff = 8              -- Keep 8 lines above/below the cursor

-- Search Settings
vim.opt.ignorecase = true          -- Ignore case when searching
vim.opt.smartcase = true           -- Case-sensitive if uppercase present
vim.opt.incsearch = true           -- Show matches while typing
vim.opt.hlsearch = false           -- Don't highlight all matches

-- Splits
vim.opt.splitbelow = true          -- Open new split below
vim.opt.splitright = true          -- Open new split to the right

-- Clipboard
vim.opt.clipboard = 'unnamedplus'  -- Use system clipboard

-- Leader Key
vim.g.mapleader = ' '              -- Use space as the leader key

-- =======================
-- Plugin Configurations
-- =======================

-- Treesitter
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,                -- Enable syntax highlighting
    additional_vim_regex_highlighting = false,
  },
  ensure_installed = { 'python', 'javascript', 'html', 'css' }, -- Install parsers
}

-- Telescope
require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "node_modules" },
  }
}

-- Nvim Tree
require('nvim-tree').setup()

-- LSP Configurations
local lspconfig = require('lspconfig')

-- Example: Configuring Pyright (Python LSP)
lspconfig.pyright.setup {}

-- Lualine (Status Line)
require('lualine').setup {
  options = {
    theme = 'gruvbox',            -- Choose a theme for the status line
  },
}

-- Gitsigns
require('gitsigns').setup()

-- =======================
-- Key Mappings
-- =======================

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Toggle Nvim Tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Telescope Find Files
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>')

-- Telescope Live Grep
vim.keymap.set('n', '<leader>g', ':Telescope live_grep<CR>')

-- Save file
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- Quit
vim.keymap.set('n', '<leader>q', ':q<CR>')

end

end
