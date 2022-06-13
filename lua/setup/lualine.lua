local _, lualine = pcall(require, 'lualine')
local _, tabline = pcall(require, 'tabline')

lualine.setup {
  options = {
    theme = 'tokyonight'
  },
  tabline = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { tabline.tabline_buffers },
    lualine_x = { tabline.tabline_tabs },
    lualine_y = {},
    lualine_z = {}
  }
}
