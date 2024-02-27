--@type ChadrcConfig
local M = {}

M.ui = { theme = "catppuccin" }

M.plugins = "custom.plugins"

local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

local function go_mod_tidy()
  vim.cmd [[ ! go mod tidy ]]
  vim.cmd [[ LspRestart ]]
end

vim.api.nvim_create_user_command("GoModTidy", go_mod_tidy, {})

local function go_get(opts)
  vim.cmd([[ ! go get ]] .. opts.fargs[1])
  if #vim.lsp.get_active_clients() > 0 then
    vim.cmd [[ LspRestart ]]
  end
end

vim.api.nvim_create_user_command("GoGet", go_get, { nargs = 1 })

return M
