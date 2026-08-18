return {
  'HakonHarnes/img-clip.nvim',
  event = 'VeryLazy',
  opts = {
    default = {
      prompt_for_file_name = false,
    },
  },
  keys = {
    -- suggested keymap
    { '<leader>p', '<cmd>PasteImage<cr>', desc = 'Paste image from system clipboard' },
  },
}
