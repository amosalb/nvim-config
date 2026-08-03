return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" }, -- Load on file events
  config = function()
    local lint = require("lint")

    -- Define linters per filetype
    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      python = { "flake8" },
      -- Add more as needed
    }

    -- Trigger linting on events
    vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}

