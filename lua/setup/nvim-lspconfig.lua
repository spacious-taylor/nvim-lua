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
  map(bufnr, "n", "<leader>ld", ":Telescope lsp_definitions theme=dropdown<CR>")
  map(bufnr, "n", "<leader>lr", ":Telescope lsp_references theme=dropdown<CR>")
end

for _, server in ipairs(servers) do
  nvim_lspconfig[server].setup(
    coq.lsp_ensure_capabilities {
      on_attach = on_attach
    }
  )
end
