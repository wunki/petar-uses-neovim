vim.cmd [[packadd packer.nvim]]

local packer = require('packer')
packer.init({
    compile_path = vim.fn.stdpath('config') .. '/lua/plugins/' .. 'packer_compiled.lua',
})

local use = require('packer').use

  use "wbthomason/packer.nvim"

  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = { { "nvim-lua/plenary.nvim" } },
  }

  use {
    "Yazeed1s/oh-lucy.nvim",
    config = function()
      vim.cmd "colorscheme oh-lucy-evening"
    end,
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    { run = ":TSUpdate" },
  }

  use { "theprimeagen/harpoon" }

  use { "mbbill/undotree" }

  use {
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
      require("nvim-surround").setup {}
    end,
  }

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    },
  }
