local keymaps = {}

keymaps.setup = function()
  -- display error message with <spc>e
  vim.keymap.set('n', '<space>e', function()
    vim.diagnostic.open_float {
      border = 'rounded',
      focus = false,
      source = true,
      width = 80,
      wrap = true,
    }
  end, { noremap = true, silent = true, desc = 'Show diagnostic message' })

  vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true, desc = '[B]uffer [N]ext' })
  vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true, desc = '[B]uffer [P]revious' })
  vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true, desc = '[B]uffer [D]elete' })
  vim.keymap.set('n', '<leader>bo', ':%bdelete|e#|bd#<CR>', { noremap = true, silent = true, desc = '[D]elete [O]ther buffers' })

  vim.keymap.set(
    'n',
    '<leader>tb',
    ':set background=<C-r>=&background == "dark" ? "light" : "dark"<CR><CR>',
    { noremap = true, silent = true, desc = '[T]oggle [B]ackground dark/light' }
  )
end

return keymaps
