-----------------------------------------------------------
--- Variables
-----------------------------------------------------------

--- Define variables
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand
local function augroup(name)
  return vim.api.nvim_create_augroup('nvimtraap_' .. name, { clear = true })
end

--- Highlight on yank
autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
})

--- Don't auto commenting new lines
autocmd('BufEnter', { command = [[set formatoptions-=cro]] })

--- Disable suggestions for specific files
autocmd('FileType', {
  pattern = { 'markdown', 'txt' },
  callback = function()
    require('cmp').setup.buffer({ enabled = false })
  end,
})

-- WhiteSpace
autocmd('BufWritePre', {
  command = [[%s/\s\+$//e]],
  group = augroup('whitespace'),
})

--- Define variables
vim.api.nvim_create_autocmd({ 'FileType' }, {
  desc = 'Close some filetypes with <q>',
  pattern = {
    'PlenaryTestPopup',
    'TelescopePrompt',
    'checkhealth',
    'dap-repl',
    'help',
    'lspinfo',
    'man',
    'nnn',
    'qf',
    'spectre_panel',
    'startuptime',
    'tsplayground',
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set('n', 'q', '<cmd>close!<cr>', { buffer = event.buf, silent = true })
  end,
  group = augroup('close_with_q'),
})

--  TeX
-- autocmd({ "BufRead", "BufNewFile" }, {
--   command = "setlocal filetype=tex",
--   group = augroup("tex"),
--   pattern = { "*.tex", "*.bbl", "*.bib", "*.texx", "*.texb", "*.cls" },
-- })
