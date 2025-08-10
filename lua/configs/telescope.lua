return {
  keys = {
    -- find files
    {
      "<leader> ",
      function()
        require("telescope.builtin").find_files()
      end,
      mode = "n",
      desc = "find files",
    },
  },
}
