local set = vim.opt
local wo = vim.wo
local bo = vim.bo

vim.cmd([[colorscheme catppuccin]])
vim.o.background = "dark"
set.termguicolors = true
set.syntax = 'on'
set.smartcase = true
set.undofile = true
set.hidden = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = true
set.cursorline = true
set.mouse = 'a'
set.clipboard = "unnamed"

wo.number = true
wo.relativenumber = true

bo.swapfile = false

vim.g.mapleader = ','
