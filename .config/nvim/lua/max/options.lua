local options = {
  backup = false, -- turn off backup file
  clipboard = "unnamedplus", -- acces system clipboard
  cmdheight = 2,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0, -- `` is visible in markdown
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10, -- popup menu height
  showmode = true,
  showtabline = 2, -- always show tabs,
  smartcase = true, -- ignore case when pattern has uppercase,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  relativenumber = true,
  numberwidth = 2,
  signcolumn = "auto",
  wrap = true,
  scrolloff = 8,
  sidescrolloff = 8,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
