function InitNeovimColors(color)
	color = color or "nord"
	vim.cmd.colorscheme(color)
end


-- local headline_highlights = {
--     "Headline1",
--     "Headline2",
--     "Headline3",
--     "Headline4",
--     "Headline5",
--     "Headline6",
-- }
-- local codeblock_highlight = "CodeBlock"
-- local dash_highlight = "Dash"
-- local quote_highlight = "Quote"
-- 
-- 
-- local headlines = require("harpoon.mark")


InitNeovimColors()
