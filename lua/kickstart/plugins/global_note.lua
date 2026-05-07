local function get_latest_note_name()
  local base = vim.fn.expand '~/Documents/Notes'
  local files = vim.fn.glob(base .. '/**/*.md', true, true)

  local excluded = {
    '/projects/',
    '/nvim-keymaps.md',
    '/personal-todos.md',
    '/phrases.md',
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

local function get_tomorrow_note_name()
  local tomorrow = os.date '*t'
  if type(tomorrow) ~= 'table' then return nil end
  tomorrow.day = tomorrow.day + 1
  return os.date('%Y/%m/%Y-%m-%d.md', os.time(tomorrow))
end

local function get_todays_note_name() return os.date '%Y/%m/%Y-%m-%d.md' end
local function get_yesterdays_note_name()
  local yesterday = os.date '*t'
  if type(yesterday) ~= 'table' then return nil end
  yesterday.day = yesterday.day - 1
  return os.date('%Y/%m/%Y-%m-%d.md', os.time(yesterday))
end

return {
  'backdround/global-note.nvim',
  opts = {
    directory = '~/Documents/Notes/',
    additional_presets = {
      latest_note = { filename = get_latest_note_name, title = 'Latest note', command_name = 'LatestNote' },
      todays_note = { filename = get_todays_note_name, title = "Today's note", command_name = 'TodayNote' },
      yesterdays_note = { filename = get_yesterdays_note_name, title = "Yesterday's note", command_name = 'YesterdayNote' },
      tomorrow_note = { filename = get_tomorrow_note_name, title = 'Tomorrow note', command_name = 'TomorrowNote' },
      keymaps = { filename = 'nvim-keymaps.md', title = 'NVIM Keymaps', command_name = 'NVIMKeymapsNote' },
    },
  },
}
