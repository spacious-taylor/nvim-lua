local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup('initialize', { clear = true })
autocmd({ 'VimEnter' }, {
  command = 'call vista#RunForNearestMethodOrFunction()'
})
autocmd({ 'CursorMoved' }, {
  pattern = { '*.yml' },
  command = 'echo localorie#expand_key()'
})
autocmd({ 'VimLeavePre' }, {
  command = 'SaveSession'
})
