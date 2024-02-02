return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')

      telescope.setup({
        defaults = {
          path_display = { 'truncate ' },
          mappings = {
            i = {
              ['<C-k>'] = actions.move_selection_previous, -- move to prev result
              ['<C-j>'] = actions.move_selection_next, -- move to next result
              ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
      })

      telescope.load_extension('fzf')
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', ';f', builtin.find_files, { desc = 'Find files' })
      vim.keymap.set('n', ';r', builtin.live_grep, { desc = 'Grep text' })
      vim.keymap.set('n', ';b', builtin.buffers, { desc = 'Search buffers' })
      vim.keymap.set('n', ';;', builtin.resume, { desc = 'Resume the previous telescope picker' })
      vim.keymap.set('n', ';d', builtin.diagnostics, { desc = 'Show diagnostics' })
      vim.keymap.set('n', ';h', builtin.help_tags, { desc = 'Show help' })
    end,
  },
  {
    -- For telescope overlay multiple choice
    'stevearc/dressing.nvim',
    event = 'VeryLazy',
  },
}
