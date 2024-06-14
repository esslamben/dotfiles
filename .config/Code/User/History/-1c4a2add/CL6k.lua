return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require('neo-tree').setup {
        close_if_last_window = true,
        window = {
          width = 40,
        },
        buffers = {
          follow_current_file = {
            enabled = true,
          },
        },
        filesystem = {
          follow_current_file = {
            enabled = true,
          },
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
              'node_modules',
            },
            never_show = {
              '.DS_Store',
              'thumbs.db',
            },
          },
        },
        keys = {
          { '<Leader>e', '<Cmd>Neotree toggle<CR>' },
        },
      }
    end,
  },
}
