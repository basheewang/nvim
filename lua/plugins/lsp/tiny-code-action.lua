---@type NvPluginSpec
---

local M = {
  "rachartier/tiny-code-action.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" },

    -- optional picker via telescope
    { "nvim-telescope/telescope.nvim" },
    -- optional picker via fzf-lua
    { "ibhagwan/fzf-lua" },
    -- .. or via snacks
    {
      "folke/snacks.nvim",
      opts = {
        terminal = {},
      },
    },
  },
  event = "LspAttach",
  opts = {
    picker = "snacks",
  },
  keys = {
    {
      "<leader>ca",
      function()
        ---@diagnostic disable-next-line: missing-parameter
        require("tiny-code-action").code_action()
      end,
      desc = "Code Action",
    },
  },
}

return M
