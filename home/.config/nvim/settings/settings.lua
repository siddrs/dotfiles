-- Settings
local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.cursorline = true
opt.termguicolors = true
opt.tabstop = 4
opt.shiftwidth = 0
opt.expandtab = false
opt.smartindent = true
opt.autoindent = true
opt.title = true
vim.opt.list = true
vim.opt.errorformat = vim.opt.errorformat ^ '%f|%l col %c|%m'
opt.wrap = false
opt.backup = false
opt.writebackup = false
opt.errorbells = false
opt.swapfile = false
opt.showmode = false
opt.ignorecase = true
opt.smartcase = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.fillchars = 'vert: '
opt.mouse = "a"
opt.hidden = true
opt.updatetime = 300
opt.redrawtime = 10000

opt.listchars:append("tab:▏ ")
-- opt.listchars:append("space:·")

vim.o.guifont = "Cartograph CF Nerd Font"
