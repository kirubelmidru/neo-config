return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
	local configuration = require("nvim-treesitter.configs")

	-- configure treesitter
	configuration.setup({ 
	    highlight = { enable = true },
	    indent = { enable = true },
	    ensure_installed = {
		"lua",
		"c",
		"rust",
		"haskell",
		"json",
		"javascript",
		"html",
		"css",
		"svelte",
	    },
	    incremental_selection = {
		enable = true,
		keymaps = {
		    init_selection = "<C-space>",
		    node_incremental = "<C-space>",
		    scope_incremental = false,
		    node_decremental = "<bs>",
		},
	    },
	})
    end,
}
