return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          hover = true,
          root_dir = function(...)
            return require("lspconfig.util").root_pattern("tailwind.config.cjs", "tailwind.config.js", "postcss.config.js")(...)
          end,

          filetypes_exclude = { "markdown" },
        },
      },
      setup = {},
    },
  },
}
