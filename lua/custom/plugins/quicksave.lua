-- Map <leader>w to write all files and notify on success/failure.
vim.keymap.set('n', '<leader>w', function()
  local ok, err = pcall(vim.cmd, 'wall')
  if ok then
    vim.notify("All files saved", vim.log.levels.INFO)
  else
    vim.notify("Save failed: " .. tostring(err), vim.log.levels.ERROR)
  end
end, { noremap = true, silent = true })

return {}
