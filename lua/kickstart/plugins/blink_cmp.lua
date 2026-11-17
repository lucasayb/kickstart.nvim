return {
  'saghen/blink.cmp',
  -- blink.cmp v2 requires nvim 0.12+; stay on v1 for older versions
  version = vim.fn.has 'nvim-0.12' == 0 and '1.*' or nil,
  opts = {
    keymap = {
      ['<CR>'] = { 'accept', 'fallback' },
      ['<C-y>'] = { 'accept' },
      ['<C-n>'] = { 'select_next' },
      ['<C-p>'] = { 'select_prev' },
    },
  },
}
