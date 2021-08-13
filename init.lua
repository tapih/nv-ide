config = {
  profile = {
    enable = true,
    threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
  }
}
-- Packer
require('plugins')
-- Config
require('settings')
require('settings.color')
require('settings.font')
require('settings.completion')
require('settings.filetype')
-- LSP Config
require('lsp')
-- Plugins config
require('plugins.feline')
-- require('plugins.fterm')
require('plugins.hlslens')
require('plugins.treesitter')
require('plugins.colorizer')
require('plugins.gitsigns')
require('plugins.nvim-autopairs')
require('plugins.nvimtree')
require('plugins.indent-blankline')
require('plugins.telescope')
-- require('plugins.numb')
require('plugins.vim-startify')
require('plugins.ctrlsf')
require('plugins.vim-rooter')
-- require('plugins.vim-signature')
require('plugins.easymotion')
require('plugins.vim-gh-line')
require('plugins.lspkind')
require('plugins.diffview')
require('plugins.todo-comments')
-- Keymap
require('settings.keymap')
