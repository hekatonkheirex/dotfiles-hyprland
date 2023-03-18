HOME = os.getenv("HOME")

-- basic settings
vim.o.encoding = "utf-8"
vim.o.history = 1000

-- Display
vim.o.laststatus = 2

-- Sidebar
vim.o.number = true
vim.o.relativenumber = true

-- White characters
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 2 -- 1 tab = 2 spaces
vim.o.shiftwidth = 2 -- indentation rule
vim.o.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vim.o.expandtab = true -- expand tab to spaces

vim.o.termguicolors = true
vim.o.background = 'dark'
-- vim.o.background = 'light'
vim.o.mouse = 'a'
vim.o.cursorline = false
vim.o.cursorcolumn = false

vim.g.node_host_prog = '/usr/local/bin/neovim-node-host'
vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.python_host_prog = '/usr/bin/python2'
vim.g.ruby_host_prog = '/home/mura/.gem/ruby/2.7.0/bin/neovim-ruby-host'
vim.g.node_host_prog = '/usr/bin/neovim-node-host'

vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10
vim.o.fileencoding = 'utf-8'
vim.o.cmdheight = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5
vim.o.mouse = "a"
vim.wo.wrap = false
vim.wo.number = true
vim.o.cursorline = true
vim.wo.signcolumn = "yes"
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
