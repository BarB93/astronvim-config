return {
  "AstroNvim/astrocore",
  opts = {
    autocmds = {
      autosave = {
        {
          event = { "FocusLost", "BufLeave" },
          desc = "Сохранить файл при потере фокуса или уходе из буфера",
          callback = function(args)
            local buf = args.buf
            local opts = vim.bo[buf]

            if
              opts.buftype == ""
              and opts.modifiable
              and not opts.readonly
              and opts.modified
              and vim.api.nvim_buf_get_name(buf) ~= ""
            then
              vim.api.nvim_buf_call(buf, function() vim.cmd "silent update" end)
            end
          end,
        },
      },
    },
  },
}
