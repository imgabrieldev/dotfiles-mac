return {
  "NStefan002/screenkey.nvim",
  version = "*",
  config = function()
    require("screenkey").setup({
      win_opts = {
        -- top-right corner
        row = 0,
        col = vim.o.columns - 1,
        relative = "editor",
        anchor = "NE",

        width = 40,
        height = 3,

        border = "none", -- <- no border
        title = "", -- <- override default title
        title_pos = "center",

        style = "minimal",
        focusable = false,
        noautocmd = true,
      },

      -- defaults (kept explicit)
      hl_groups = {
        ["screenkey.hl.key"] = { link = "Normal" },
        ["screenkey.hl.map"] = { link = "Normal" },
        ["screenkey.hl.sep"] = { link = "Normal" },
      },
      winblend = 0,
      compress_after = 3,
      clear_after = 3,
      emit_events = true,
      disable = {
        filetypes = {},
        buftypes = {},
        modes = {},
      },
      show_leader = true,
      group_mappings = false,
      display_infront = {},
      display_behind = {},
      filter = function(keys)
        return keys
      end,
      colorize = function(keys)
        return keys
      end,
      separator = " ",
      keys = {
        ["<TAB>"] = "󰌒",
        ["<CR>"] = "󰌑",
        ["<ESC>"] = "Esc",
        ["<SPACE>"] = "␣",
        ["<BS>"] = "󰌥",
        ["<DEL>"] = "Del",
        ["<LEFT>"] = "",
        ["<RIGHT>"] = "",
        ["<UP>"] = "",
        ["<DOWN>"] = "",
        ["<HOME>"] = "Home",
        ["<END>"] = "End",
        ["<PAGEUP>"] = "PgUp",
        ["<PAGEDOWN>"] = "PgDn",
        ["<INSERT>"] = "Ins",
        ["<F1>"] = "󱊫",
        ["<F2>"] = "󱊬",
        ["<F3>"] = "󱊭",
        ["<F4>"] = "󱊮",
        ["<F5>"] = "󱊯",
        ["<F6>"] = "󱊰",
        ["<F7>"] = "󱊱",
        ["<F8>"] = "󱊲",
        ["<F9>"] = "󱊳",
        ["<F10>"] = "󱊴",
        ["<F11>"] = "󱊵",
        ["<F12>"] = "󱊶",
        ["CTRL"] = "Ctrl",
        ["ALT"] = "Alt",
        ["SUPER"] = "󰘳",
        ["<leader>"] = "<leader>",
      },
    })

    -- optional: quick toggle keybind
    vim.keymap.set("n", "<leader>sk", function()
      vim.cmd("Screenkey toggle")
    end, { desc = "Toggle Screenkey" })
  end,
}
