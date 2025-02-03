function ColorMyPencils(color)
	vim.opt.termguicolors = true
	color = color or "darkbox"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
