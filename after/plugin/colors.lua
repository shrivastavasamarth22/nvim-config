function ColorMyPencils(color)
	vim.opt.termguicolors = true
	color = color or "sequoia_retro"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
