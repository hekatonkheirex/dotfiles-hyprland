local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  vim.api.nvim_command('packadd packer.nvim')
end

return require('packer').startup({
  function(use)
  use 'wbthomason/packer.nvim' -- Packer self-manager

  -- Common
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
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
  use { 'windwp/nvim-ts-autotag' }
  use { 'p00f/nvim-ts-rainbow' }
  use { 'windwp/nvim-autopairs' }
  use { 'folke/which-key.nvim', config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use { 'onsails/lspkind-nvim' } 
  use { 'williamboman/nvim-lsp-installer' }
  use { 'norcalli/nvim-colorizer.lua' }
  use { 'folke/twilight.nvim', config = function()
	  require("twilight").setup {
		  -- your configuration comes here
		  -- or leave it empty to use the default settings
		  -- refer to the configuration section below
		  }
		end
	}
  
  -- use 'glepnir/dashboard-nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'terrortylor/nvim-comment'
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}

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
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}}
)
