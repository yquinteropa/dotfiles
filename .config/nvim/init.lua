vim.o.rnu = true
vim.o.nu = true
vim.o.smartindent = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true 
vim.o.clipboard = "unnamedplus"
vim.o.termguicolors = true
vim.cmd('syntax on')

require("config.lazy")

vim.cmd("colorscheme kanagawa")
vim.cmd('highlight Normal guibg=NONE')
