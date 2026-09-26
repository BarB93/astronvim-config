return {
  "lewis6991/gitsigns.nvim",
  opts = function(_, opts)
    local original_on_attach = opts.on_attach

    opts.on_attach = function(bufnr)
      if original_on_attach then original_on_attach(bufnr) end

      local gitsigns = require "gitsigns"
      local keymap_opts = { buffer = bufnr }

      -- vim.keymap.set("n", "<Leader>gpp", gitsigns.preview_hunk, {
      --   buffer = keymap_opts.buffer,
      --   desc = "Preview Git hunk in popup",
      -- })

      vim.keymap.set("n", "<Leader>gp", gitsigns.preview_hunk_inline, {
        buffer = keymap_opts.buffer,
        desc = "Preview Git hunk inline",
      })
    end
  end,
}
