-- /home/julien/.config/vim/lua/configs/copilot.lua
local M = {}
-- Variable for Toggle Copilot completion
vim.g.copilot_enabled = 1
local cmp = require "cmp"
local user = vim.env.USER or "User"
user = user:sub(1, 1):upper() .. user:sub(2)

M.opts = {
  auto_insert_mode = false,
  sticky = { "#buffer" },
  question_header = "  " .. user .. " ",
  answer_header = "  Copilot ",
  window = {
    width = 0.3,
  },
}

M.keys = {
  {
    "<C-a>",
    "copilot#Accept('<C-a>')",
    mode = "i",
    expr = true,
    silent = true,
    replace_keycodes = false,
    desc = "Accept Copilot suggestion",
  },

  -- CopilotChat mappings
  { "<c-s>", "<CR>", ft = "copilot-chat", desc = "Submit Prompt", remap = true },
  { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
  {
    "<leader>aA",
    function()
      if vim.g.copilot_enabled == 1 then
        vim.cmd "Copilot disable"
        print "Copilot completion disabled"
      else
        vim.cmd "Copilot enable"
        print "Copilot completion enabled"
      end
    end,
    desc = "Toggle (Copilot completion)",
    mode = { "n", "v" },
  },
  {
    "<leader>aa",
    function()
      return require("CopilotChat").toggle()
    end,
    desc = "Toggle (CopilotChat)",
    mode = { "n", "v" },
  },
  {
    "<leader>ax",
    function()
      return require("CopilotChat").reset()
    end,
    desc = "Clear (CopilotChat)",
    mode = { "n", "v" },
  },
  {
    "<leader>aq",
    function()
      vim.ui.input({
        prompt = "Quick Chat: ",
      }, function(input)
        if input ~= "" then
          require("CopilotChat").ask(input, {
            selection = require("CopilotChat.select").buffer,
          })
        end
      end)
    end,
    desc = "Quick Chat (CopilotChat)",
    mode = { "n", "v" },
  },
  {
    "<leader>ap",
    function()
      require("CopilotChat").select_prompt()
    end,
    desc = "Prompt Actions (CopilotChat)",
    mode = { "n", "v" },
  },
}

M.config = function(_, opts)
  require("render-markdown").setup {
    file_types = { "markdown", "copilot-chat" },
  }
  vim.g.copilot_no_tab_map = true
  local chat = require "CopilotChat"
  chat.setup(opts)

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "copilot-chat",
    callback = function(args)
      vim.b[args.buf].copilot_enabled = false
      cmp.setup.buffer { enabled = false }
    end,
  })
end

return M
