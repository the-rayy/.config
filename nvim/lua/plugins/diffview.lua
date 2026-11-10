return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewFileHistory', 'DiffviewToggleFiles' },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = 'Diffview: open' },
    { '<leader>gq', '<cmd>DiffviewClose<cr>', desc = 'Diffview: close' },
    { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = 'Diffview: file history' },
  },
  opts = {},
}
