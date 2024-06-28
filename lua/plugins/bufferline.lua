return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },

    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          themable = true,
          numbers = "none",
          close_command = "bdelete! %d",
          right_mouse_command = "bdelete! %d",
          left_mouse_command = "buffer %d",
          buffer_close_icon = '󰅖',
          modified_icon = '●',
          close_icon = '',
          tab_size = 18,
          diagnostics = true,
          color_icons = true,
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          show_tab_indicators = true,
          separator_style = "slope"
        }
      })
      vim.opt.termguicolors = true

      vim.keymap.set('n', '[b', ':BufferLineCyclePrev<CR>', {})
      vim.keymap.set('n', ']b', ':BufferLineCycleNext<CR>', {})
    end
  }
}
