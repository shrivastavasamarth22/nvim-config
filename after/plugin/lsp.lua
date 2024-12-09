local lsp = require('lsp-zero').preset('recommended')

lsp.ensure_installed({
	'pyright',       -- Python
	'ts_ls',      -- JavaScript/TypeScript
	'eslint',				-- ESLint
	'html',          -- HTML
	'cssls',         -- CSS
	'tailwindcss',   -- TailwindCSS
	'jsonls',        -- JSON
	'emmet_ls',      -- Emmet
	'clangd',         -- C/C++
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<CR>'] = cmp.mapping.confirm(cmp_select),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	-- Keybindings for LSP
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

