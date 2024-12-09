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
	print("help")
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



-- lsp.setup_nvim_cmp({
-- 	sources = {
-- 		{ name = 'nvim_lsp' },
-- 		{ name = 'luasnip' }
-- 	}
-- })
--
-- lsp.on_attach(function(client, bufnr)
-- 	local opts = { buffer = bufnr, remap = false }
--
-- 	-- Keybindings for LSP
-- 	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
-- 	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
-- 	vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
-- 	vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
-- 	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
-- 	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
-- 	vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
-- 	vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
-- 	vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
-- 	vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
-- end)
--
-- local cmp = require('cmp')
--
-- cmp.setup({
-- 	mapping = {
-- 		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Use Enter to confirm selection
-- 		['<Tab>'] = cmp.mapping.select_next_item(),       -- Use Tab to navigate to the next item
-- 		['<S-Tab>'] = cmp.mapping.select_prev_item(),     -- Use Shift-Tab to navigate to the previous item
-- 	},
-- 	sources = {
-- 		{ name = 'nvim_lsp' },
-- 		{ name = 'luasnip' },
-- 		{ name = 'buffer' },
-- 		{ name = 'path' },
-- 	},
-- })
--
-- require('lspconfig').pyright.setup({
-- 	settings = {
-- 		python = {
-- 			analysis = {
-- 				typeCheckingMode = "strict"
-- 			}
-- 		}
-- 	}
-- })
--
--
-- require('lspconfig').ts_ls.setup({
-- 	settings = {
-- 		completions = {
-- 			completeFunctionCalls = true
-- 		}
-- 	}
-- })
-- require('lspconfig').tailwindcss.setup({})
-- require('lspconfig').clangd.setup({})
-- require('lspconfig').html.setup({})
-- require('lspconfig').cssls.setup({})
-- require('lspconfig').jsonls.setup({})
-- require('lspconfig').emmet_ls.setup({})
--
-- lsp.set_preferences({
-- 	sign_icons = false,
-- })

lsp.setup()
