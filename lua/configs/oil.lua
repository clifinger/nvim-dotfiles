return {
  view_options = {
    show_hidden = true,
  },
  keymaps = {
    ["<C-s>"] = false,
    ["<C-c>"] = false,
  },
  keys = {
    {
      "-",
      function()
        require("oil").toggle_float()
      end,
      desc = "Toggle Oil",
    },
  },
}
