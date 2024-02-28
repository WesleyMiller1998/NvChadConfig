---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>dd"] = { "<cmd> lua vim.diagnostic.open_float() <CR>", "?   toggles local troubleshoot" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

return M
