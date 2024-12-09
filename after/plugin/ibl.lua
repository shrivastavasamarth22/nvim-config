-- Define highlight groups for Indent Blankline
local highlight_groups = {
	RainbowRed = "#da674b",    -- Matches 'String'
	RainbowYellow = "#e8b246", -- Matches 'IncSearch'
	RainbowBlue = "#5c87a4",   -- Matches 'Type'
	RainbowOrange = "#a27e57", -- Matches 'StorageClass'
	RainbowGreen = "#648f68",  -- Matches 'Keyword'
	RainbowViolet = "#43444D", -- Matches 'Comment'
	RainbowCyan = "#829fa7",   -- Matches 'DiagnosticError'
}

-- Function to set up highlight groups
local function setup_highlight_groups()
	for group, color in pairs(highlight_groups) do
		vim.api.nvim_set_hl(0, group, {fg = color})
	end
end

-- Create an autocommand to reset highlight groups on colorscheme change
vim.api.nvim_create_augroup("HighlightSetup", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
	group = "HighlightSetup",
	callback = setup_highlight_groups,
})

setup_highlight_groups()

-- Configure the Indent Blankline plugin
require("ibl").setup {
	indent = {
		highlight = vim.tbl_keys(highlight_groups),
	},
}
