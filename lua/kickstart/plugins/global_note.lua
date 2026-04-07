return {
  'backdround/global-note.nvim',
  opts = {
    filename = 'general.md',
    directory = '~/Documents/notes/',

    additional_presets = {
      note_of_the_day = {
        filename = os.date '%Y/%m/%Y-%m-%d.md',
        title = 'Note of the day',
        command_name = 'NoteDay',
      },
      todo = {
        filename = 'todo.md',
        title = 'List of todo',
        command_name = 'TodoNote',
      },
      keymaps = {
        filename = 'nvim-keymaps.md',
        title = 'NVIM Keymaps',
        command_name = 'NVIMKeymapsNote',
      },
    },
  },
}
