return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- set keymaps
    local map = vim.keymap.set -- for conciseness

    map('n', '<leader>a', "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = 'Mark file with harpoon' })
    map('n', '<leader>o', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = 'Toggle harpoon menu' })
    map('n', '<leader>n', "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = 'Go to next harpoon mark' })
    map('n', '<leader>p', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = 'Go to previous harpoon mark' })
  end,
}
