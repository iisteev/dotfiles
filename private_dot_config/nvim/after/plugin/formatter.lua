-- formatter runner
local formatter = require "formatter"
local formatter_filetypes = require "formatter.filetypes"

formatter.setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    python = {
      formatter_filetypes.python.black,
    },
    go = {
      formatter_filetypes.go.gofmt,
      formatter_filetypes.go.goimports,
    },
    ["*"] = {
      formatter_filetypes.any.remove_trailing_whitespace,
    }
  },
}
