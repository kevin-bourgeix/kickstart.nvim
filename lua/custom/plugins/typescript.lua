vim.api.nvim_set_keymap('n', '<leader>l', "<CMD>LspEslintFixAll<CR>", { noremap = true, silent = true, desc = "Lint Code (ESLint)" })
vim.api.nvim_set_keymap('n', '<C-Enter>', "<CMD>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true, desc = "Lint Code (ESLint)" })
vim.api.nvim_set_keymap('i', '<C-Enter>', "<CMD>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true, desc = "Lint Code (ESLint)" })
-- shortcut for lsp code action
vim.api.nvim_set_keymap('n', '<leader>ca', "<CMD>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true, desc = "LSP Code Action" })

return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {},
}
