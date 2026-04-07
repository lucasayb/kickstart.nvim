return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  -- lazy = false,
  keys = {
    -- { '\\', ':Neotree reveal show<CR>', desc = 'NeoTree reveal', silent = true },
    {
      '<leader>e',
      '<cmd>Neotree filesystem reveal left toggle<CR>',
      silent = true,
      desc = 'Neo-tree toggle reveal',
    },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
