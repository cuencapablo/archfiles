return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    build = ':TSUpdate',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      'windwp/nvim-ts-autotag',
    },
    config = function()
      local config = require('nvim-treesitter.configs')
      config.setup({
        ensure_installed = { 'astro', 'gitignore', 'c', 'lua', 'vim', 'vimdoc', 'query', 'tsx', 'typescript', 'css', 'javascript', 'html' },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
      })
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter-context',
    event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
    enabled = true,
    opts = { mode = 'cursor', max_lines = 3 },
    keys = {
      -- stylua: ignore
      { '<leader>ut', function() require('treesitter-context').toggle() end,
        desc = 'Toggle Treesitter Context',
      },
    },
  },
}
