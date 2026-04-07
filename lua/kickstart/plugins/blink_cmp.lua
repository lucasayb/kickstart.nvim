return {
  'saghen/blink.cmp',
  opts = {
    keymap = {
      ['<CR>'] = { 'accept', 'fallback' },
      ['<C-y>'] = { 'accept' },
      ['<C-n>'] = { 'select_next' },
      ['<C-p>'] = { 'select_prev' },
    },
  },
}
