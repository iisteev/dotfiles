local lint = require('lint')
local golangcilint = require("lint.linters.golangcilint")

lint.linters_by_ft = {
    python = {'flake8'},
    go = {"golangcilint"},
}

golangcilint.append_fname = true
golangcilint.args = {
    "run",
    "--out-format",
    "json",
    "--timeout",
    "5m",
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function() lint.try_lint() end,
})
