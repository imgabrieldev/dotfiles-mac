return {
  { import = "lazyvim.plugins.extras.lang.rust" },

  {
    "mrcjkb/rustaceanvim",
    opts = function(_, opts)
      opts.server = opts.server or {}
      opts.server.default_settings = opts.server.default_settings or {}
      opts.server.default_settings["rust-analyzer"] =
        vim.tbl_deep_extend("force", opts.server.default_settings["rust-analyzer"] or {}, {
          checkOnSave = true,
          check = { command = "clippy" },
        })
    end,
  },
}
