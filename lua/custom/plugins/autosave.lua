return {
  'okuuva/auto-save.nvim',
  version = '^1.0.0',
  cmd = 'ASToggle', -- optionnel, lazy loading à la commande
  event = { 'InsertLeave', 'TextChanged' }, -- lazy loading à ces événements
  opts = {}, -- configuration par défaut, ou personnalisez ici
}
