--import plugins
require("plugins")
--tab stuff
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.filetype.indent = true
--screen suff
vim.opt.scrolloff = 2
vim.opt.number = true
vim.opt.numberwidth = 3
    --crosshair highlighting
vim.wo.cursorline = true
--vim.wo.cursorcolumn = true
--vim.opt.foldmethod = 'indent'
--colors
vim.cmd('colorscheme solarized')
vim.opt.background = 'dark'
vim.opt.termguicolors = true
vim.g.solarized_italics = 1
vim.g.solarized_visibility = 'normal'
vim.g.solarized_diffmode = 'normal'
    --To enable transparency
if vim.fn.has('gui_running') == 0 then
    vim.g.solarized_termtrans = 0
else
    vim.g.solarized_termtrans = 1
end
vim.g.solarized_statusline = 'normal'
--status line
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "javascript", "python", "css", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  --ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  -- require'nvim-treesitter.configs'.setup {
  --   indent = {
  --     enable = true
  --   }
  -- },
}
