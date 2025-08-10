---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "bearded-arc",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  tabufline = {
    lazyload = false,
  },
}

return M
