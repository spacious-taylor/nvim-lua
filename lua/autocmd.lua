local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup('initialize', { clear = true })
autocmd({ 'CursorMoved' }, {
  pattern = { '*.yml' },
  command = 'echo localorie#expand_key()'
})
