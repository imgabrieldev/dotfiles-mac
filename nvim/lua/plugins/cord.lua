return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  opts = function()
    return {
      -- seu "neovim_image_text" aqui é isso:
      editor = {
        tooltip = "coffee, code and vim",
      },

      -- erros via LSP diagnostics (conta só ERROR)
      plugins = {
        ["cord.plugins.diagnostics"] = {
          scope = "buffer",
          severity = { min = vim.diagnostic.severity.ERROR },
          override = false, -- pra você controlar o texto do jeito que quiser
        },
      },

      -- atualização do cursor
      advanced = {
        plugin = {
          -- "on_move" atualiza mais vezes, mas pode parecer "atrasado" por limite do Discord
          -- (ver nota abaixo)
          cursor_update = "on_move",
          -- alternativa mais “smooth”:
          -- cursor_update = "on_hold",
        },
      },

      text = {
        -- 2ª linha (normalmente)
        workspace = function(opts)
          return opts.workspace and ("In " .. opts.workspace) or ""
        end,

        -- 1ª linha quando editando
        editing = function(opts)
          local total = vim.api.nvim_buf_line_count(0)
          local errs = (opts.diagnostics and opts.diagnostics(opts)) or 0
          return string.format(
            "Editing %s  %d:%d/%d  ✗%d",
            opts.filename,
            opts.cursor_line,
            opts.cursor_char,
            total,
            errs
          )
        end,

        -- 1ª linha quando só “viewing”
        viewing = function(opts)
          local total = vim.api.nvim_buf_line_count(0)
          local errs = (opts.diagnostics and opts.diagnostics(opts)) or 0
          return string.format(
            "Viewing %s  %d:%d/%d  ✗%d",
            opts.filename,
            opts.cursor_line,
            opts.cursor_char,
            total,
            errs
          )
        end,
      },
    }
  end,
}
