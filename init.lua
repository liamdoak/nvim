-- download packages
require("liamdoak.manager")
get_package("ellisonleao/gruvbox.nvim")
get_package("nvim-lua/plenary.nvim")
get_package("nvim-treesitter/nvim-treesitter")
get_package("nvim-telescope/telescope.nvim")
local telescope_builtin = require('telescope.builtin')

-- tab configuration
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = false

-- keybindings
vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>s", ":vsplit<Enter>", {})
vim.keymap.set("n", "<leader>S", ":split<Enter>", {})
vim.keymap.set("n", "<leader>d", ":only<Enter>", {})
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fF", telescope_builtin.git_files, {})
vim.keymap.set("n", "<leader>fs", function()
    telescope_builtin.grep_string({search = vim.fn.input("Grep > ")})
end, {})
vim.keymap.set("n", "J", "<C-f>", {})
vim.keymap.set("n", "K", "<C-b>", {})

-- cursor
vim.opt.cursorline = true
vim.cmd("set clipboard+=unnamedplus")

-- colorscheme
vim.cmd("colorscheme gruvbox")
