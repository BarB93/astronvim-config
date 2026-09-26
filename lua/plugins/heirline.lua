return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    -- Загружаем модуль компонентов AstroUI
    local status = require("astroui.status")
    
    -- Переопределяем структуру статус-линии, добавляя mode_text
    opts.statusline = {
      hl = { fg = "fg", bg = "bg" },
      status.component.mode({
        -- Включаем отображение режима текстом с небольшими отступами
        mode_text = { padding = { left = 1, right = 1 } },
      }),
      status.component.git_branch(),
      status.component.file_info(),
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.virtual_env(),
      status.component.treesitter(),
      status.component.nav(),
    }
  end,
}
