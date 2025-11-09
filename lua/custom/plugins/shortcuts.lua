local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

local disabledKeys = {'<up>', '<down>', '<left>', '<right>'}

for _, key in ipairs(disabledKeys) do
  vim.keymap.set('n', key, '<nop>', opts)
  vim.keymap.set('i', key, '<nop>', opts)
  vim.keymap.set('v', key, '<nop>', opts)
  vim.keymap.set('c', key, '<nop>', opts)
  vim.keymap.set('x', key, '<nop>', opts)
  vim.keymap.set('s', key, '<nop>', opts)
  vim.keymap.set('o', key, '<nop>', opts)
end



return {}
