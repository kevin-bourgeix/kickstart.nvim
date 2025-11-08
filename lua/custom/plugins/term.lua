local shell

if vim.fn.has 'macunix' == 1 then
  shell = '/opt/homebrew/bin/fish'
elseif vim.fn.has 'win32' then
  shell = 'pwsh.exe'
else
  shell = vim.o.shell
end

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  keys = {
    { '<leader>T', '<CMD>ToggleTerm direction=float dir=%:p:h<CR>', desc = 'Toggle Terminal' },
  },
  opts = { shell = shell },
}
