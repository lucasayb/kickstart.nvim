return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  config = function()
    local install_file_types = {
      'javascript',
      'typescript',
      'tsx',
      'jsx',
      'json',
      'bash',
      'c',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'vim',
      'vimdoc',
    }

    local filetypes = {
      'javascript',
      'typescript',
      'typescriptreact',
      'javascriptreact',
      'json',
      'jsonc',
      'bash',
      'c',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'vim',
      'vimdoc',
    }
    require('nvim-treesitter').install(install_file_types)
    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function() vim.treesitter.start() end,
    })
  end,
}
