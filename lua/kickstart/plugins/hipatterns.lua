return {
  'echasnovski/mini.hipatterns',
  event = 'BufReadPre',
  opts = function()
    local hi = require 'mini.hipatterns'

    return {
      highlighters = {
        priority_high = {
          pattern = '@priority%(high%)',
          group = 'DiagnosticError',
        },
        priority_medium = {
          pattern = '@priority%(medium%)',
          group = 'DiagnosticWarn',
        },
        priority_low = {
          pattern = '@priority%(low%)',
          group = 'DiagnosticInfo',
        },
      },
    }
  end,
}
