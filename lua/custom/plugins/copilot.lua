return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'BufReadPost',
    opts = {
      panel = { enabled = false },
      suggestion = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
}
