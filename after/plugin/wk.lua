local wk = require("which-key")
wk.add({
	{"<leader>f", group = "find"},
	{"<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers"},
	{"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find in files"},
	{"<leader>u", "vim.cmd.UndotreeToggle", desc = "Toggle undotree"},
	{"<leader>gs", "vim.cmd.Git", desc = "Toggle fugitive"}
})
