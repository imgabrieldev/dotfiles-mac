-- lua/plugins/colorscheme.lua
return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",    -- "night", "storm", "moon" (todos dark)
      transparent = true, -- não seta bg, deixa o do terminal
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Diz pro LazyVim usar Tokyonight como tema principal
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
