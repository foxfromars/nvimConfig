local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
  formatting.eslint,
  formatting.stylua,
  formatting.rustfmt,
  formatting.clang_format,
  formatting.autopep8,
}
