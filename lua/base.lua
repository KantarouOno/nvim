vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"

vim.wo.number = true


-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
 vim.g.loaded_netrw = 1
 vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


