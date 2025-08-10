return {
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
    lazy = false,
    cmd = { "RenderMarkdown", "RenderMarkdownToggle" },
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
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
}
