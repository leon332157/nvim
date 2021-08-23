require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal", "dashboard"},
    filetype_exclude = {"dashboard"},
    blankline_space_char = true
}

vim.g.airline_theme = 'gruvbox_material'
vim.g.gruvbox_material_background = 'soft'
vim.api.nvim_command('colorscheme gruvbox-material')
require('gitsigns').setup()
--vim.notify = require("notify")
