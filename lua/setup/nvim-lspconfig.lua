local _, nvim_lspconfig = pcall(require, 'lspconfig')
local _, coq = pcall(require, 'coq')

local servers = { 'eslint', 'stylelint_lsp', 'solargraph' }

function map(bufnr, mode, lhs, rhs, opts)
  local options = { noremap = true, buffer = bufnr }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

function on_attach(client, bufnr)
  map(bufnr, 'n', '<leader>ld', vim.lsp.buf.definition)
  map(bufnr, 'n', '<leader>lh', vim.lsp.buf.hover)
  map(bufnr, 'n', '<leader>li', vim.lsp.buf.implementation)
  map(bufnr, 'n', '<leader>ln', vim.lsp.buf.rename)
  map(bufnr, 'n', '<leader>la', vim.lsp.buf.code_action)
  map(bufnr, 'n', '<leader>lr', vim.lsp.buf.references)
  map(bufnr, "n", "<leader>fd", ":Telescope lsp_definitions theme=dropdown<CR>")
  map(bufnr, "n", "<leader>fr", ":Telescope lsp_references theme=dropdown<CR>")
end

for _, server in ipairs(servers) do
  nvim_lspconfig[server].setup(
    coq.lsp_ensure_capabilities {
      on_attach = on_attach
    }
  )
end
