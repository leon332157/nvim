require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal", "dashboard"},
    filetype_exclude = {"dashboard"},
    blankline_space_char = true
}

vim.g.airline_theme = 'gruvbox_material'
vim.g.gruvbox_material_background = 'soft'
vim.cmd('colorscheme gruvbox-material')
require('gitsigns').setup()
require('lualine').setup {
  options = {
    theme = 'gruvbox-flat'
    -- ... your lualine config
  }
}
--vim.notify = require("notify")
