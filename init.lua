local modules = {
  'plugins',
  'options',
  'autocmd',
  'mappings',
}

for _, module in ipairs(modules) do
  pcall(require, module)
end
