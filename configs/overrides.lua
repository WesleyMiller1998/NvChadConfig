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
    "gopls",
    "goimports-reviser",
    "terraform-ls",
    "shfmt",
    "stylua",
    "tflint",
  },
}

M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
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
