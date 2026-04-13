local function get_latest_note_name()
  local base = vim.fn.expand '~/Documents/Notes'
  local files = vim.fn.glob(base .. '/**/*.md', true, true)

  local excluded = {
    '/projects/',
    '/nvim-keymaps.md',
    '/personal-todos.md',
  }

  files = vim.tbl_filter(function(file)
    for _, dir in ipairs(excluded) do
      if file:find(dir, 1, true) then return false end
    end
    return true
  end, files)

  if #files == 0 then return nil end

  table.sort(files)

  return files[#files]:gsub(base .. '/', '')
end

return {
  'backdround/global-note.nvim',
  opts = {
    directory = '~/Documents/Notes/',
    additional_presets = {
      latest_note = { filename = get_latest_note_name(), title = 'Latest note', command_name = 'LatestNote' },
      todays_note = { filename = os.date '%Y/%m/%Y-%m-%d.md', title = "Today's note", command_name = 'TodayNote' },
      keymaps = { filename = 'nvim-keymaps.md', title = 'NVIM Keymaps', command_name = 'NVIMKeymapsNote' },
    },
  },
}
