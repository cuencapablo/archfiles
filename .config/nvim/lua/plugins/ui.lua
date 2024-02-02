return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      local logo = [[
          |\      _,,,---,,_
      ZZZzz /,`.-'`'    -.  ;-;;,_
          |,4-  ) )-,_. ,\ (  `'-'
          '---''(_/--'  `-'\_)  Nonyoo
      ]]
      logo = string.rep('\n', 8) .. logo .. '\n\n'

      require('dashboard').setup({
        -- config
        theme = 'doom',
        config = {
          header = vim.split(logo, '\n'),
          center = {
            { action = 'Telescope oldfiles', desc = ' Recent files', icon = ' ', key = 'r' },
            { action = 'Telescope projects', desc = ' Projects', icon = ' ', key = 'p' },
            { action = 'qa', desc = ' Quit', icon = ' ', key = 'q' },
            { action = 'Lazy', desc = ' Lazy', icon = '󰒲 ', key = 'l' },
          },
          footer = function()
            local stats = require('lazy').stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { '⚡ Neovim loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins in ' .. ms .. 'ms' }
          end,
        },
      })
    end,
  },

  {
    'NvChad/nvim-colorizer.lua',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
      filetypes = { '*' },
      -- all the sub-options of filetypes apply to buftypes
      user_default_options = {
        tailwind = true,
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      },
      buftypes = {},
    },
  },
}
