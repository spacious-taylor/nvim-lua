local _, packer = pcall(require, 'packer')

function config_path(name)
  return string.format('require("setup.%s")', name)
end

function use_plugins()
  -- package manager
  use 'wbthomason/packer.nvim'

  -- EditorConfig, required
  use 'editorconfig/editorconfig-vim'

  -- movement
  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = config_path('hop')
  }

  -- git
  use {
    'tanvirtin/vgit.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = config_path('vgit')
  }

  -- code analysis
  use {
    'neovim/nvim-lspconfig',
    config = config_path('nvim-lspconfig')
  } -- language server protocol
  use {
    'nvim-treesitter/nvim-treesitter',
    config = config_path('nvim-treesitter')
  } -- treesitter

  -- autocomplete
  use { 'ms-jpq/coq_nvim', run = 'python3 -m coq deps' }
  use 'ms-jpq/coq.artifacts'
  use 'ms-jpq/coq.thirdparty'

  -- display
  use 'folke/tokyonight.nvim' -- colorscheme
  use {
    'nvim-lualine/lualine.nvim',
    config = config_path('lualine')
  } -- status line
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = config_path('nvim-tree')
  } -- folder tree
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  } -- fuzzzy finder
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = config_path('indent-blankline')
  } -- indentation indicator
  use {
    'norcalli/nvim-colorizer.lua',
    config = config_path('nvim-colorizer')
  } -- color indicator
  use {
    'chentoast/marks.nvim',
    config = config_path('marks')
  } -- marks indicator
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = config_path('trouble')
  } -- result list
  use 'p00f/nvim-ts-rainbow' -- rainbow parenthesis
  use 'voldikss/vim-floaterm' -- terminal
  use {
    "folke/which-key.nvim",
    config = config_path('which-key')
  } -- which key

  -- language-specific
  -- rails-specific
  use 'tpope/vim-rails'
  use 'airblade/vim-localorie' -- translation file navigation

  -- markdown-specific
  use 'preservim/vim-markdown' -- syntax highlight
  use 'shime/vim-livedown'     -- markdown live server
end

return packer.startup(use_plugins)
