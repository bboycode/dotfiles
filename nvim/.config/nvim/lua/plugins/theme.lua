return {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
	require("black-metal").setup({
	    -- optional configuration here
	    -- Can be one of: bathory | burzum | dark-funeral | darkthrone | emperor | gorgoroth | immortal | impaled-nazarene | khold | marduk | mayhem | nile | taake | thyrfing | venom | windir
	    theme = "venom",
	    -- Can be one of: 'light' | 'dark', or set via vim.o.background
	    variant = "light",
	})
	require("black-metal").load()
    end,
}
