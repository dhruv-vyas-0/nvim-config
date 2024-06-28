return {
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,

    config = function()
      require('Comment').setup()

      vim.api.nvim_set_keymap('n', '<C-_>', 'gcc', {})
      vim.api.nvim_set_keymap('v', '<C-_>', 'gcc', {})
    end
  }
}
