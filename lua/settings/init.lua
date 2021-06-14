-- Global
vim.opt.updatetime = 250
vim.opt.fillchars = { vert = ' ' }
vim.opt.showtabline = 2
vim.opt.scrolloff = 10
vim.opt.mouse = 'a'
vim.opt.backupcopy = 'yes'
vim.opt.undolevels = 1000
vim.opt.conceallevel = 0
vim.opt.shortmess:append { c = true, S = true }
vim.opt.showmode = false
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrapscan = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.infercase = true
vim.opt.inccommand = 'split'
vim.opt.virtualedit = 'block'
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.pastetoggle = '<C-b>'
vim.opt.errorbells = false
vim.opt.joinspaces = false
vim.opt.title = true
vim.opt.lazyredraw = true
vim.opt.encoding = 'UTF-8'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.clipboard = 'unnamedplus'
vim.opt.listchars = { tab = ">>>", trail = "·", precedes = "←", extends = "→",eol = "↲", nbsp = "␣" }
-- Buffer
vim.opt.fileformat = 'unix'
vim.opt.spelllang = 'it'
vim.opt.autoindent = true
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.expandtab = true
-- Window
vim.opt.number = true
vim.opt.colorcolumn = "80"
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 1
vim.opt.list = false
vim.opt.foldnestmax = 10
vim.opt.signcolumn = 'yes'
vim.opt.relativenumber = true
vim.opt.foldenable = false
vim.opt.cursorline = true

vim.cmd[[autocmd BufReadPost * lua goto_last_pos()]]
function goto_last_pos()
  local last_pos = vim.fn.line("'\"")
  if last_pos > 0 and last_pos <= vim.fn.line("$") then
    vim.api.nvim_win_set_cursor(0, {last_pos, 0})
  end
end

vim.cmd 'au TextYankPost * silent! lua vim.highlight.on_yank()'
vim.cmd 'au InsertLeave * set nopaste'
-- YAML
vim.cmd 'au FileType yaml setlocal sw=2 sts=2 ts=2 et'
-- Go
vim.cmd 'au FileType go :highlight goErr cterm=bold ctermfg=214'
vim.cmd 'au FileType go :match goErr /<err>/'
-- Disable auto indent on a new comment line
vim.cmd 'au FileType * set formatoptions-=cro'
