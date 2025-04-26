---@type NvPluginSpec
---

local M = {
  "kylechui/nvim-surround",
  -- version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "InsertEnter",
}

function M.config()
  require("nvim-surround").setup {
    -- Configuration here, or leave empty to use defaults
  }
end

return M
