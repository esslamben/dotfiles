require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "javascript",
    "typescript",
    "tsx",
    "json",
    "yaml",
    "html",
    "scss",
    "go",
    "graphql",
    "dockerfile",
    "lua",
    "svelte",
    "css",
  },
}

