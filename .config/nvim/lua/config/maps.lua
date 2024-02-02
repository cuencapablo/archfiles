-----------------------------------------------------------
--- Variables
-----------------------------------------------------------
local discipline = require('me.discipline')
discipline.cowboy()

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-----------------------------------------------------------
--- Keymaps
-----------------------------------------------------------
-- better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Increment|drecement
map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

-- New tab
map('n', 'te', ':tab split<CR>', opts)
map('n', '<leader>e', ':Explore<CR>', opts)
map('n', '<tab>', ':tabnext<Return>', opts)
map('n', '<s-tab>', ':tabprev<Return>', opts)

-- Select All
map('n', '<C-a>', 'gg<S-v>G')
map({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and clear hlsearch' })
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- New pane on vertical and close
map('n', '<leader>\\', ':vsplit<CR>', opts)
map('n', '<leader>d', ':close<CR>', opts)

-- Resize window
map('n', '<s-Left>', '<C-w><')
map('n', '<s-Right>', '<C-w>>')
map('n', '<s-Up>', '<C-w>+')
map('n', '<s-Down>', '<C-w>-')

-- Move to window using the <ctrl> hjkl keys
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
