local _, vgit = pcall(require, 'vgit')

vgit.setup {
  keymaps = {
    ['n <C-k>'] = 'hunk_up',
    ['n <C-j>'] = 'hunk_down',
    ['n <leader>gh'] = 'buffer_hunk_preview',
    ['n <leader>gd'] = 'buffer_diff_preview',
  },
}
