local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "go",
    "terraform",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    "go",
    "gopls",
    "goimports-reviser",
    "terraform-ls",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
