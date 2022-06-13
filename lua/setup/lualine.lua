local _, lualine = pcall(require, 'lualine')

lualine.setup {
  options = {
    theme = 'tokyonight'
  },
  tabline = {
    lualine_a = {{ 'buffers', mode = 4 }},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'vim.b.vista_nearest_method_or_function' }
  }
}
