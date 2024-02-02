return {
  'olimorris/onedarkpro.nvim',
  lazy = false,
  priority = 1000, -- Ensure it loads first
  opts = {
    colors = {},
    highlights = {
      Visual = { bg = '#413C59' },
    },
    styles = { -- use "bold,italic"
      types = 'bold',
      methods = 'NONE',
      numbers = 'NONE',
      strings = 'NONE',
      comments = 'italic',
      keywords = 'bold, italic',
      constants = 'NONE',
      functions = 'bold',
      operators = 'NONE',
      variables = 'NONE',
      parameters = 'NONE',
      conditionals = 'NONE',
      virtual_text = 'NONE',
    },
    filetypes = { -- Override which filetype highlight groups are loaded
      comment = true,
      go = true,
      html = true,
      java = true,
      javascript = true,
      json = true,
      lua = true,
      markdown = true,
      php = true,
      python = true,
      ruby = true,
      rust = true,
      scss = true,
      toml = true,
      typescript = true,
      typescriptreact = true,
      vue = true,
      xml = true,
      yaml = true,
    },
    options = {
      cursorline = true, -- Use cursorline highlighting?
      transparency = true, -- Use a transparent background?
      terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
      lualine_transparency = true, -- Center bar transparenty?
      highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
    },
  },
}
