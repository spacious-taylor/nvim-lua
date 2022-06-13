local _, vgit = pcall(require, 'vgit')

vgit.setup {
  keymaps = {
    ['n <C-k>'] = 'hunk_up',
    ['n <C-j>'] = 'hunk_down',
    ['n <leader>ghb'] = 'buffer_hunk_preview',
    ['n <leader>gdb'] = 'buffer_diff_preview',
    ['n <leader>ghp'] = 'project_hunks_preview',
    ['n <leader>gdp'] = 'project_diff_preview',
  },
}
