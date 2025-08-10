return {
  keys = {
    {
      "<leader>fr",
      function()
        require("spectre").toggle()
      end,
      mode = "n",
      desc = "Toggle Spectre",
    },
  },
}

