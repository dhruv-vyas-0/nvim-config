return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = function()
      require('lsp-zero').on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        require('lsp-zero').default_keymaps({ buffer = bufnr })
      end)
    end
  },
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup({})
    end
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
    }
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('lsp-zero').extend_lspconfig()
      require('mason-lspconfig').setup({
        ensure_installed = {
          -- LSP Servers
          'lua_ls',
          'clangd',
          'pyright',
          'jdtls',
          'tsserver',
          -- 'html',
          'cssls',
          'lemminx',
          'gradle_ls',
          -- 'java_language_server',
        },
      })

      -- Servers setup
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.pyright.setup({})
      lspconfig.tsserver.setup({})
      -- lspconfig.html.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.lemminx.setup({})
      lspconfig.gradle_ls.setup({})
      -- lspconfig.java_language_server.setup({})
    end
  },

  -- Auto completion support
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      { 'L3MON4D3/LuaSnip' }
    },
    config = function()
      local cmp = require('cmp')
      local cmp_action = require('lsp-zero').cmp_action()

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          -- `Enter` key to confirm completion
          ['<CR>'] = cmp.mapping.confirm({ select = false }),

          -- Ctrl+Space to trigger completion menu
          ['<C-Space>'] = cmp.mapping.complete(),

          -- Navigate between snippet placeholder
          ['<C-f>'] = cmp_action.luasnip_jump_forward(),
          ['<C-b>'] = cmp_action.luasnip_jump_backward(),

          -- Scroll up and down in the completion documentation
          ['<C-u>'] = cmp.mapping.scroll_docs(-3),
          ['<C-d>'] = cmp.mapping.scroll_docs(3),
        })
      })
    end
  }
}
