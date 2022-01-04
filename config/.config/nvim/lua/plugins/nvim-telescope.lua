require('telescope').setup{
    defaults = {
        file_ignore_patterns = { "node_modules" }
    }
}

local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {})
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {})
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {})
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {})
