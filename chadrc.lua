--@type ChadrcConfig
local M = {}

M.ui = { theme = "catppuccin" }

M.plugins = "custom.plugins"

require("custom.configs.open_nvim")

return M
