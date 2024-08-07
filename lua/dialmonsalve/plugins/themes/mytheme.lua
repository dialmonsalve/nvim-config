return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		local bg = "#1C2227"
		local bg_dark = "#011423"
		local bg_highlight = "#143652"
		local bg_search = "#0A64AC"
		local bg_visual = "#275378"
		local fg = "#FFFFFF"
		local fg_dark = "#B4D0E7"
		local fg_gutter = "#FFD750"
		local border = "#547998"
		local black = "#000000"
		local red = "#D84D4D"
		local green = "#6EBA61"
		local orange = "#ED5907"
		local yellow = "#DED461"
		local blue = "#1BA6FA"
		local magenta = "#BB66DF"
		local cyan = "#21DEEF"
		local white = "#FFFFFF"

		require("tokyonight").setup({
			style = "night",
			on_colors = function(colors)
				colors.bg = bg
				colors.bg_dark = bg_dark
				colors.bg_float = bg_dark
				colors.bg_highlight = bg_highlight
				colors.bg_popup = bg_dark
				colors.bg_search = bg_search
				colors.bg_sidebar = bg_dark
				colors.bg_statusline = bg_dark
				colors.bg_visual = bg_visual
				colors.border = border
				colors.fg = white
				colors.fg_dark = fg_dark
				colors.fg_float = fg
				colors.fg_gutter = fg_gutter
				colors.fg_sidebar = fg_dark
				colors.black = black
				colors.red = red
				colors.green = green
				colors.yellow = yellow
				colors.blue = blue
				colors.magenta = magenta
				colors.cyan = cyan
				colors.orange = orange
			end,
		})

		vim.cmd("colorscheme tokyonight")
	end,
}
