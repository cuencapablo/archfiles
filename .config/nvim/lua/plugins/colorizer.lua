return {
  "NvChad/nvim-colorizer.lua",
  opts = {
    filetypes = { "*" },
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
}
