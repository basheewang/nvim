return {
  -- Restore to last state
  {
    "farmergreg/vim-lastplace",
    event = "VeryLazy",
  },

  {
    "RRethy/vim-illuminate",
    event = "VeryLazy",
    config = function()
      require("illuminate").configure()
    end,
  },

  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "VeryLazy",
  },

  {
    "kevinhwang91/nvim-bqf",
    event = "VeryLazy",
    ft = "qf",
  },
}
