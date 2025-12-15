return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  lazy = false,
  keys = {
    {
      '<leader>1',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = 'Harpoon buffer [1]',
    },

    {
      '<leader>2',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = 'Harpoon buffer [2]',
    },

    {
      '<leader>3',
      function()
        require('harpoon'):list():select(3)
      end,
      desc = 'Harpoon buffer [3]',
    },

    {
      '<leader>4',
      function()
        require('harpoon'):list():select(4)
      end,
      desc = 'Harpoon buffer [4]',
    },

    {
      '<leader>5',
      function()
        require('harpoon'):list():select(5)
      end,
      desc = 'Harpoon buffer [5]',
    },

    {
      '<leader>6',
      function()
        require('harpoon'):list():select(6)
      end,
      desc = 'Harpoon buffer [6]',
    },

    {
      '<leader>7',
      function()
        require('harpoon'):list():select(7)
      end,
      desc = 'Harpoon buffer [7]',
    },

    {
      '<leader>8',
      function()
        require('harpoon'):list():select(8)
      end,
      desc = 'Harpoon buffer [8]',
    },

    {
      '<leader>9',
      function()
        require('harpoon'):list():select(9)
      end,
      desc = 'Harpoon buffer [9]',
    },

    {
      '<leader>0',
      function()
        require('harpoon'):list():select(0)
      end,
      desc = 'Harpoon buffer 1[0]',
    },

    -- Harpoon next and previous.
    {
      '<leader>n',
      function()
        require('harpoon'):list():next()
      end,
      desc = 'Harpoon [N]ext buffer',
    },

    {
      '<leader>p',
      function()
        require('harpoon'):list():prev()
      end,
      desc = 'Harpoon [P]rev buffer',
    },

    -- Harpoon user interface.
    {
      '<leader>l',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = 'Harpoon Toggle [L]ist',
    },

    {
      '<leader>a',
      function()
        require('harpoon'):list():add()
      end,
      desc = 'Harpoon [A]dd file',
    },
  },
}
