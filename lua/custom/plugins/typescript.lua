vim.api.nvim_set_keymap('n', '<leader>l', "<CMD>LspEslintFixAll<CR>", { noremap = true, silent = true, desc = "Lint Code (ESLint)" })

return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {},
}
