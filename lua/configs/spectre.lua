return {
  keys = {
    {
      "<leader>fr",
      function()
        require("spectre").toggle()
      end,
      mode = "n",
      desc = "Find and Replace",
    },
  },
}
