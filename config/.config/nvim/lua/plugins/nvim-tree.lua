require'nvim-tree'.setup {
    update_focused_file = {enable = true},
    auto_close = true,
    view = {width = 35}
}

local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", {})
keymap("n", "[NvimTree]f", "<cmd>NvimTreeFindFile<CR>", {})

