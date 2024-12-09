require("samarth")

-- Set options
vim.wo.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.cursorline = true
vim.opt.encoding = "UTF-8"
vim.opt.hidden = true
vim.opt.completeopt:remove("preview")
vim.wo.signcolumn = 'yes'

-- GUI settings
vim.o.guifont = 'JetBrains Mono:h12'
vim.g.neovide_transparency = 0.95
