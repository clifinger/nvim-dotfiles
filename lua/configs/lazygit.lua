local colors = require("base46").get_theme_tb "base_30"
local syntax = require("base46").get_theme_tb "base_16"

vim.api.nvim_set_hl(0, "LazygitActiveBorder", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "LazygitInactiveBorder", { fg = colors.grey })
vim.api.nvim_set_hl(0, "LazygitSelectedLine", { bg = colors.one_bg2 })
vim.api.nvim_set_hl(0, "LazygitUnstagedChanges", { fg = colors.red })
vim.api.nvim_set_hl(0, "LazygitStagedChanges", { fg = colors.green })
vim.api.nvim_set_hl(0, "LazygitOptionsText", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "LazygitDefaultFg", { fg = colors.white })
vim.api.nvim_set_hl(0, "LazygitCherryPickedCommitFg", { fg = colors.purple })
vim.api.nvim_set_hl(0, "LazygitCherryPickedCommitBg", { fg = syntax.base0B })

return {
  configure = true,
  config = {
    os = { editPreset = "nvim-remote" },
    gui = { nerdFontsVersion = "3" },
  },
  theme = {
    activeBorderColor = { fg = "LazygitActiveBorder" },
    inactiveBorderColor = { fg = "LazygitInactiveBorder" },
    selectedLineBgColor = { bg = "LazygitSelectedLine" },
    optionsTextColor = { fg = "LazygitOptionsText" },
    unstagedChangesColor = { fg = "LazygitUnstagedChanges" },
    defaultFgColor = { fg = "LazygitDefaultFg" },
    cherryPickedCommitFgColor = { fg = "LazygitCherryPickedCommitFg" },
    cherryPickedCommitBgColor = { fg = "LazygitCherryPickedCommitBg" },
  },
}
