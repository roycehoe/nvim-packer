function InitNeovimColors(color)
	color = color or "nord"
	vim.cmd.colorscheme(color)
end

InitNeovimColors()
