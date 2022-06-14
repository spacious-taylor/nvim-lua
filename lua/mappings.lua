vim.g.mapleader = ','

function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- folder tree
map('n', '<leader>/', ':NvimTreeToggle<cr>')

-- search highlight
map('n', '<esc>', ':nohlsearch<cr>', { silent = true })

-- reverse finding
map('n', '\\', ',')

-- buffer
map('n', 'gb', '":<c-U>" . v:count1 . "bn<cr>"', { expr = true })
map('n', 'gB', '":<c-U>" . v:count1 . "bp<cr>"', { expr = true })
map('n', '<leader>b', '":<c-U>" . (v:count > 0 ? v:count : "") . "b<cr>"', { expr = true })
map('n', '<leader>q', '":<c-U>" . (v:count > 0 ? v:count : "") . "bd<cr>"', { expr = true })

-- terminal
map('n', '<leader>ft', ':FloatermToggle<cr>')
map('t', '<esc>', '<c-\\><c-n>')

-- fuzzy finder
map('n', '<leader>ff', ':Telescope find_files<cr>')
map('n', '<leader>fg', ':Telescope live_grep<cr>')

-- motion
map('n', '<leader>hw', ':HopWord<cr>')
map('n', '<leader>hp', ':HopPattern<cr>')
map('n', '<leader>hl', ':HopLine<cr>')

-- vista
map('n', '<leader>vv', ':Vista nvim_lsp<cr>')

-- rails translation
map('n', '<leader>lt', ':call localorie#translate()<cr>')

vim.cmd [[
  function! WrapRegion() range
    let region_name = input('Region Name? ')
    execute "normal " .. a:firstline .. "GV" .. a:lastline .. "GdO# region " .. region_name .. "\<CR>\<BS>\<BS>\<CR>\<CR># endregion " .. region_name .. "\<ESC>2kp"
  endfunction

  vnoremap <leader>wr :call WrapRegion()<cr>
]]
