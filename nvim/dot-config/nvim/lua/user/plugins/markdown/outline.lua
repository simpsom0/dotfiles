return {
  'hedyhli/outline.nvim',
  config = function()
    vim.keymap.set('n', '|', '<cmd>Outline<CR>', { desc = 'Toggle Outline' })
    require('outline').setup {
      -- outline_window.focus_on_open = false,
      outline_window = {
        focus_on_open = false,
        no_provider_message = '',
      },
    }
  end,
}
