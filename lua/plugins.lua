-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'windwp/nvim-autopairs'
  use 'AndrewRadev/tagalong.vim'
  use 'andymass/vim-matchup'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }
  use {
      'JoosepAlviste/nvim-ts-context-commentstring',
      requires = {'nvim-treesitter/nvim-treesitter'},
  }
  use {
      'romgrk/nvim-treesitter-context',
      requires = {'nvim-treesitter/nvim-treesitter'},
  }

  -- Syntax
  use 'zinit-zsh/zplugin-vim-syntax'
  use 'chrisbra/csv.vim'
  use 'junegunn/vim-easy-align'
  use 'bronson/vim-trailing-whitespace'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Line and Bufferline
  use 'famiu/feline.nvim'
  use 'romgrk/barbar.nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use 'fhill2/telescope-ultisnips.nvim'
  use {
    'pwntester/octo.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-lua/popup.nvim'},
    },
  }

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

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
  -- use { 'akinsho/flutter-tools.nvim', ft = {'dart'} }
  use { 'thosakwe/vim-flutter', ft = {'dart'} }
  use { 'dart-lang/dart-vim-plugin', ft = {'dart'} }
  use { 'reisub0/hot-reload.vim', ft = {'dart'} }

  -- Go
  use { 'buoto/gotests-vim', ft = {'go'} }
  use { 'mattn/vim-goimports', ft = {'go'} }

  -- Markdown
  use { 'godlygeek/tabular', ft = {'markdown'} }
  use { 'plasticboy/vim-markdown', ft = {'markdown'} }
  use {
    'iamcco/markdown-preview.nvim',
    ft = {'markdown'},
    run = 'cd app && yarn install',
    cmd = 'MarkdownPreview',
  }

  -- YAML
  use { 'yasuhiroki/github-actions-yaml.vim', ft = {'yaml'} }
  use { 'xavierchow/vim-swagger-preview', ft = {'yaml'} }
  use { 'andrewstuart/vim-kubernetes', ft = {'yaml'} }

  -- Other languages support
  use { 'hashivim/vim-terraform', ft = {'tf'} }
  use { 'uarun/vim-protobuf', ft = {'proto'} }
  use { 'tmux-plugins/vim-tmux', ft = {'tmux'} }

  -- Registers
  use 'tversteeg/registers.nvim'

  -- Move & Search & replace
  use 'windwp/nvim-spectre'
  use 'nacro90/numb.nvim'
  use 'dyng/ctrlsf.vim'
  use 'kevinhwang91/nvim-hlslens'
  use 'easymotion/vim-easymotion'
  use 'dstein64/nvim-scrollview'
  use 'chaoren/vim-wordmotion'
  use 'coderifous/textobj-word-column.vim'

  -- Tim Pope docet
  use 'tpope/vim-sensible'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-dispatch'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'

  -- Tmux
  use 'christoomey/vim-tmux-navigator'
  use 'roxma/vim-tmux-clipboard'

  -- Colorschema
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/sonokai'

  -- General Plugins
  use 'airblade/vim-rooter'
  use 'mhinz/vim-startify'
  use 'jeffkreeftmeijer/vim-numbertoggle'
  use 'lambdalisue/suda.vim'
  use 'numtostr/FTerm.nvim'
  use 'folke/todo-comments.nvim'
  use 'vim-scripts/loremipsum'
  use 'ruanyl/vim-gh-line'
  use {
    'tyru/open-browser.vim',
    cmd = {'OpenBrowser', 'OpenBrowserSearch', 'OpenBrowserSmartSearch'},
  }

end)
