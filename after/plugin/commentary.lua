vim.api.nvim_create_autocmd("FileType", {
	pattern = {"python", "sh", "html", "xml", "yaml", "yml", "typescript", "javascript", "typescriptreact", "javascriptreact"},
	callback = function ()
		local commentstrings = {
			python = "# %s",
			sh = "# %s",
			html = "<!-- %s -->",
			xml = "<!-- %s -->",
			yaml = "# %s",
			yml = "# %s",
			typescript = "// %s",
			javascript = "// %s",
			typescriptreact = "// %s",
			javascriptreact = "// %s",
		}
		vim.opt_local.commentstring = commentstrings[vim.bo.filetype]
	end
})
