local keymaps = {}

keymaps.setup = function()
  -- display error message with <spc>e
  vim.keymap.set('n', '<space>e', function()
    vim.diagnostic.open_float({
      border = 'rounded',
      focus = false,
      source = true,
      width = 80,
      wrap = true
    })
  end, { noremap = true, silent = true, desc = 'Show diagnostic message' })
end

return keymaps
