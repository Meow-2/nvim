return function()
  local home = os.getenv('HOME')
  local vim_conf_path = vim.fn.stdpath('config')
  local db = require('dashboard')
  local z = require('zephyr')
  db.session_directory = home .. '/.cache/nvim/session'
  db.preview_command = 'ueberzug'
  db.preview_file_path = vim_conf_path .. '/static/logo.png'
  db.preview_file_height = 15 
  db.preview_file_width = 46 
  db.custom_center = {
    {
      icon = '  ',
      icon_hl = { fg = z.red },
      desc = 'Update Plugins             ',
      shortcut = 'SPC p u',
      action = 'PackerUpdate',
    },
    {
      icon = '  ',
      icon_hl = { fg = z.yellow },
      desc = 'Recently opened files      ',
      action = 'Telescope oldfiles',
      shortcut = 'SPC f h',
    },
    {
      icon = '  ',
      icon_hl = { fg = z.cyan },
      desc = 'Find  File                 ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f',
    },
    {
      icon = '  ',
      icon_hl = { fg = z.blue },
      desc = 'File Browser               ',
      action = 'Telescope file_browser',
      shortcut = 'SPC f b',
    },
    {
      icon = '  ',
      icon_hl = { fg = z.oragne },
      desc = 'Find  word                 ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f b',
    },
    {
      icon = '  ',
      icon_hl = { fg = z.redwine },
      desc = 'Open Personal dotfiles     ',
      action = 'Telescope dotfiles path=' .. home .. '/.dotfiles',
      shortcut = 'SPC f d',
    },
  }
end