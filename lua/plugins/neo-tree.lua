return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },

    config = function()
      require("neo-tree").setup({
        window = {
          position = "left",
          width = 28
        }
      })

      vim.keymap.set('n', '<leader>nt', ':Neotree toggle<CR>', {}) 
    end
  }
}
