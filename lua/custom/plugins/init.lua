-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- Configure gruvbox
      require('gruvbox').setup {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = '', -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      }

      -- Set colorscheme
      vim.o.background = 'dark' -- or 'light' for light version
      vim.cmd 'colorscheme gruvbox'

      vim.keymap.set(
        'n',
        '<leader>tb',
        ':set background=<C-r>=&background == "dark" ? "light" : "dark"<CR><CR>',
        { noremap = true, silent = true, desc = '[T]oggle [B]ackground dark/light' }
      )
    end,
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require('neo-tree').setup {
        close_if_last_window = true,
        popup_border_style = 'rounded',
        enable_git_status = true,
        enable_diagnostics = true,
        window = {
          width = 30,
          mappings = {
            ['<space>'] = 'none', -- disable space mapping
          },
        },
      }
      vim.keymap.set('n', '<space>tt', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = '[T]oggle Neo-[T]ree' })
    end,
  },
}
