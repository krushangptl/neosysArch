-- setting maybe 

-- number and relative number
vim.opt.number = true
vim.opt.relativenumber = true

-- cursor
vim.opt.guicursor = ""

-- color column and sign column
vim.opt.colorcolumn = "86"
vim.opt.signcolumn = "yes"

-- syntax and filetype indent
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- tab, indent and no line warp
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.softtabstop = 4
vim.opt.expandtab = true 
vim.opt.smartindent = true
vim.opt.wrap = false

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- splits 
vim.opt.splitbelow = true
vim.opt.splitright = true

-- scroll 
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- background
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- backups 
vim.opt.backup = false 
vim.opt.swapfile = false 
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- copy, mouse, update time, keysequence 
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 500
