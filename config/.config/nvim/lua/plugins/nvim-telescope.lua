require('telescope').setup{
    defaults = {
        file_ignore_patterns = { "node_modules" },
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        windblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
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
