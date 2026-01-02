return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "ibhagwan/fzf-lua",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  opts = {
    lang = "rust",

    description = {
      position = "right", -- lc.position
      width = "40%", -- lc.size
      show_stats = true,
    },

    plugins = {
      non_standalone = false,
    },

    storage = {
      home = "~/Documents/codes/h/leetcode/",
      cache = "~/Documents/codes/h/leetcode/.cache/",
    },

    -- image_support disables wrapping when enabled
    image_support = true,

    injector = {
      rust = {
        before = {
          "pub struct Solution;",
          "",
        },
        after = {
          "",
          "fn main() {}",
        },
      },
    },
  },
}
