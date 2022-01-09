require('telescope').setup{
    defaults = {
        file_ignore_patterns = { "node_modules" }
    },
    extensions = {
	fzf = {
	  fuzzy = true,
	  override_generic_sorter = true,
	  override_file_sorter = true,
	  case_mode = "smart_case",
	}
    }
}

local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {})
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {})
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {})
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {})

require('telescope').load_extension('fzf');
