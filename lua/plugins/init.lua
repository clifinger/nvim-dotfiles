return {
  {
    "folke/noice.nvim",
    event = require("configs.noice").event,
    opts = require("configs.noice").opts,
    keys = require("configs.noice").keys,
    config = require("configs.noice").config,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    opts = {},
  },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function()
      return require "configs.nvimtree"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    lazy = require("configs.treesitter-context").lazy,
    opts = require("configs.treesitter-context").opts,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = require("configs.snacks").keys,
  },
  {
    "folke/which-key.nvim",
    lazy = require("configs.whichkey").lazy,
    keys = require("configs.whichkey").keys,
    cmd = require("configs.whichkey").cmd,
    opts = require("configs.whichkey").opts,
  },
  {
    "stevearc/oil.nvim",
    opts = require "configs.oil",
    keys = require("configs.oil").keys,
    dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = require("configs.render-markdown").lazy,
    cmd = require("configs.render-markdown").cmd,
    dependencies = require("configs.render-markdown").dependencies,
  },

  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = require("configs.spectre").keys,
    opts = {},
  },

  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    keys = require("configs.telescope").keys,
    config = function()
      require "configs.telescope"
      ---@diagnostic disable: different-requires
      require("telescope").load_extension "ui-select"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim", lazy = false },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    branch = "main",
    cmd = "CopilotChat",
    opts = require("configs.copilot").opts,
    config = require("configs.copilot").config,
    keys = require("configs.copilot").keys,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = require("configs.indent-blankline").event,
    main = require("configs.indent-blankline").main,
    opts = require("configs.indent-blankline").opts,
  },
  {
    "echasnovski/mini.ai",
    -- Next-gen motion and textobject plugin
    event = "VeryLazy",
    opts = function()
      return require "configs.mini"
    end,
  },
}