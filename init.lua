-- download packages
require("liamdoak.manager")
get_package("ellisonleao/gruvbox.nvim")
get_package("nvim-lua/plenary.nvim")
get_package("nvim-treesitter/nvim-treesitter")
get_package("nvim-telescope/telescope.nvim")
require('telescope').setup {
    defaults = {
        layout_config = {
            preview_cutoff = 10
        }
    }
}
local telescope_builtin = require('telescope.builtin')
get_package("tikhomirov/vim-glsl")

-- tab configuration
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

-- vertical bar at column 81
vim.opt.colorcolumn="81"

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

-- C/C++ indentation
vim.opt.cinoptions = "N-s,+0,g0,(1s"
