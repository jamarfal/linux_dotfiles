return {
	-- 1. Instalar el tema Catppuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	-- 2. Configurar LazyVim para que use este tema
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-mocha",
		},
	},
}
