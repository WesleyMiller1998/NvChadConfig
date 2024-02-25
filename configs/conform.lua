local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },

    sh = { "shfmt" },

    go = { "goimports-reviser", "gofmt" },

    terraform = { "terraform_fmt" },
    tf = { "terraform_fmt" },
    ["terraform-vars"] = { "terraform_fmt" },
  },

  format_after_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
