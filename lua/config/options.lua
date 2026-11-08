vim.g.mapleader 	= " "
vim.g.maplocalleader	= "\\"

-- removes checkhealth warning
-- delete if needed later
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

-- line number and gutter
vim.o.number = true
vim.o.numberwidth = 2
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.scrolloff = 8

-- theme
vim.o.termguicolors = true

-- whitespace visibility
vim.opt.list = true
vim.opt.listchars = {
  tab = "»  ",
  trail = "·",
  nbsp = "␣"
}

-- indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = -1
vim.o.expandtab = true
vim.o.smartindent = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true

-- splits
vim.o.splitright = true
vim.o.splitbelow = true

-- editing
vim.o.undofile = true
vim.o.confirm = true
vim.o.breakindent = true
vim.o.linebreak = true

-- timing
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- when curser reacher end/beginning of line got to previous/next line
-- vim.opt.whichwrap:append "<>[]hl"

-- clipboard
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)
