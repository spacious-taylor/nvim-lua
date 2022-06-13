local _, nvim_treesitter_config = pcall(require, 'nvim-treesitter.configs')

nvim_treesitter_config.setup {
  ensure_installed = { 'ruby', 'typescript', 'scss' },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  }
}
