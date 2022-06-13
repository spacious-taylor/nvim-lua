local _, lualine = pcall(require, 'lualine')

lualine.setup {
  options = {
    theme = 'tokyonight'
  },
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
  }
}
