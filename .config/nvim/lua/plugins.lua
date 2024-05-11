local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  vim.api.nvim_command('packadd packer.nvim')
end

-- Packer
return require('packer').startup({
  function(use)
  use 'wbthomason/packer.nvim' -- Packer self-manager

-- Themes
  use 'shaunsingh/nord.nvim'
  use 'navarasu/onedark.nvim'
  use 'sainnhe/everforest'
  use 'sainnhe/gruvbox-material'
  use 'LunarVim/horizon.nvim'
  use({ 'catppuccin/nvim', as = 'catppuccin' })
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    tag = 'v1.*',
  })
  use 'folke/tokyonight.nvim'
  use 'audibleblink/hackthebox.vim'
  use {'decaycs/decay.nvim', as = 'decay'}
  use 'Shatur/neovim-ayu'
  use 'Mofiqul/dracula.nvim'
  use {'glyh/oxocarbon.nvim', branch = 'lualine-support'}
  use { 'Everblush/nvim', as = 'everblush' }
  use 'akai54/2077.nvim'
  use "rebelot/kanagawa.nvim"
  use "Biscuit-Colorscheme/nvim"

  -- Autopairs
  use { 'windwp/nvim-autopairs' }

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use { 'onsails/lspkind-nvim' } 

  -- Snippets
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- Comments
  use 'terrortylor/nvim-comment' 

  -- Color highlighter
  use { 'norcalli/nvim-colorizer.lua' }

  -- Syntax highlight
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { "luckasRanarison/tree-sitter-hypr" }
  use { 'Fymyte/tree-sitter-rasi' }

  -- Explorer
use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }, config = function()
    require'nvim-tree'.setup{
      renderer = {
        indent_markers = {
          enable = true,
          icons = {
          corner = "└ ",
          edge = "│ ",
          none = "  ",
          },
        },
      },
      update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
      },
    }
    end
  }

  -- Fzf Finder
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

  -- Lualine
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }} 

  -- Startup screen
  use {
    'glepnir/dashboard-nvim',
    -- event = 'VimEnter',
    -- config = function()
    --   require('dashboard').setup {
    --     -- config
    --   }
    -- end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup{
        yadm = {
          enable = true
        },
      }
    end
  }

  -- Autoindent
  use 'lukas-reineke/indent-blankline.nvim'

  -- Bufferline
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  
  -- Autotags
  use { 'windwp/nvim-ts-autotag' }
  use { 'HiPhish/nvim-ts-rainbow2' }

  -- Lazy nvim
  use { 'folke/which-key.nvim', config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }

  -- Zen mode
  use { 'folke/twilight.nvim', config = function()
	  require("twilight").setup {
		  -- your configuration comes here
		  -- or leave it empty to use the default settings
		  -- refer to the configuration section below
		  }
		end
	}

  -- tmux navigator
  use{ 'alexghergh/nvim-tmux-navigation', config = function()
	  require'nvim-tmux-navigation'.setup {
		  disable_when_zoomed = true, -- defaults to false
		  keybindings = {
			  left = "<C-h>",
			  down = "<C-j>",
			  up = "<C-k>",
			  right = "<C-l>",
			  last_active = "<C-\\>",
			  next = "<C-Space>",
		  }
	  }
	  end
  }

  -- Rasi (for Rofi)
  use { 'Fymyte/rasi.vim', ft = 'rasi', }
  
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}}
)
