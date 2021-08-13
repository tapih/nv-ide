-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

-- Auto compile when there are changes in plugins.lua
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use 'wbthomason/packer.nvim'

  -- Buffer management
  use { 'mhinz/vim-sayonara', cmd = 'Sayonara' }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  -- use { 'stevearc/aerial.nvim', cmd = 'AerialToggle' }

  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  use 'windwp/nvim-autopairs'
  -- use 'L3MON4D3/LuaSnip'
  use { 'andymass/vim-matchup', event = 'VimEnter' }
  use { 'AndrewRadev/tagalong.vim', ft = {'html'}, event = 'InsertEnter' }
  -- NOTE: disabled because it's slow to load
  -- use 'SirVer/ultisnips'

  -- Treesitter
  use 'lukas-reineke/indent-blankline.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
      'JoosepAlviste/nvim-ts-context-commentstring',
      requires = {'nvim-treesitter/nvim-treesitter'},
  }
  use {
      'romgrk/nvim-treesitter-context',
      requires = {'nvim-treesitter/nvim-treesitter'},
  }

  -- Syntax
  -- use 'zinit-zsh/zplugin-vim-syntax'
  -- use 'chrisbra/csv.vim'
  use 'junegunn/vim-easy-align'
  use 'bronson/vim-trailing-whitespace'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Line and Bufferline
  use 'romgrk/barbar.nvim'
  use {
      'famiu/feline.nvim',
      requires = {'kyazdani42/nvim-web-devicons'},
  }

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'pwntester/octo.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-lua/popup.nvim'},
    },
  }
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  -- use 'nvim-telescope/telescope-project.nvim'
  -- use 'fhill2/telescope-ultisnips.nvim'

  -- Explorer
  use { 'kyazdani42/nvim-tree.lua', cmd = {'NvimTreeToggle'} }

  -- Color
  use 'norcalli/nvim-colorizer.lua'

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
  }
  use 'rhysd/committia.vim'
  use 'sindrets/diffview.nvim'

  -- Flutter
  use {
      'akinsho/flutter-tools.nvim',
      ft = {'dart'},
      requires = {'nvim-lua/plenary.nvim'},
  }
  -- use { 'thosakwe/vim-flutter', ft = {'dart'} }
  -- use { 'dart-lang/dart-vim-plugin', ft = {'dart'} }
  use { 'reisub0/hot-reload.vim', ft = {'dart'} }

  -- Go
  use { 'buoto/gotests-vim', ft = {'go'} }
  use { 'mattn/vim-goimports', ft = {'go'} }

  -- Markdown
  use { 'godlygeek/tabular', ft = {'markdown'} }
  -- use { 'plasticboy/vim-markdown', ft = {'markdown'} }
  use {
    'iamcco/markdown-preview.nvim',
    ft = {'markdown'},
    run = 'cd app && yarn install',
    cmd = 'MarkdownPreview',
  }

  -- YAML
  use { 'xavierchow/vim-swagger-preview', ft = {'yaml'} }
  -- use { 'andrewstuart/vim-kubernetes', ft = {'yaml'} }

  -- Other languages support
  -- use { 'uarun/vim-protobuf', ft = {'proto'} }
  -- use { 'tmux-plugins/vim-tmux', ft = {'tmux'} }

  -- Registers
  use 'tversteeg/registers.nvim'

  -- Move & Search & replace
  -- use 'windwp/nvim-spectre'
  use 'dyng/ctrlsf.vim'
  use 'kevinhwang91/nvim-hlslens'
  use 'easymotion/vim-easymotion'
  use 'coderifous/textobj-word-column.vim'
  -- use 'dstein64/nvim-scrollview'
  -- use 'kshenoy/vim-signature'
  -- use 'nacro90/numb.nvim'
  -- use 'chaoren/vim-wordmotion'

  -- Tim Pope docet
  use 'tpope/vim-sensible'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  -- use { 'tpope/vim-dispatch', cmd = {'Dispatch', 'Make', 'Focus', 'Start'} }
  -- use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'

  -- Tmux
  -- use 'christoomey/vim-tmux-navigator'
  use 'roxma/vim-tmux-clipboard'

  -- Colorschema
  -- use 'sainnhe/gruvbox-material'
  -- use 'sainnhe/sonokai'
  use 'folke/todo-comments.nvim'

  -- General Plugins
  use 'airblade/vim-rooter'
  use 'mhinz/vim-startify'
  -- use 'jeffkreeftmeijer/vim-numbertoggle'
  use 'numtostr/FTerm.nvim'
  use 'ruanyl/vim-gh-line'
  -- use { 'vim-scripts/loremipsum', cmd = {'Loremipsum'} }
  -- use { 'lambdalisue/suda.vim', cmd = {'SudaRead', 'SudaWrite'} }
  use {
    'tyru/open-browser.vim',
    cmd = {'OpenBrowser', 'OpenBrowserSearch', 'OpenBrowserSmartSearch'},
  }

end)
