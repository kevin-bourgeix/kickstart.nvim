return {
  'okuuva/auto-save.nvim',
  version = '^1.0.0',
  cmd = 'ASToggle', -- optionnel, lazy loading à la commande
  opts = {}, -- configuration par défaut, ou personnalisez ici
      -- function that takes the buffer handle and determines whether to save the current buffer or not
      -- return true: if buffer is ok to be saved
      -- return false: if it's not ok to be saved
      -- if set to `nil` then no specific condition is applied
      condition = function(buf)
        -- Disable auto-save for the harpoon plugin, otherwise it just opens and closes
        -- https://github.com/ThePrimeagen/harpoon/issues/434
        local filetype = vim.bo[buf].filetype
        if filetype == "harpoon" then
          return false
        end

        return true
      end,
}
