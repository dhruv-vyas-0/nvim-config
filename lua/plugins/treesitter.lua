return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "lua",
          "javascript",
          "c",
          "python",
          "java",
          "vimdoc"
        },

        highlight = {
          enable = true
        },

        indent = {
          enable = true
        },

        autotag = {
          enable = true
        },
      })
    end
  }
}
