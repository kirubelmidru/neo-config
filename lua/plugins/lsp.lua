return {
    {
	"williamboman/mason.nvim",
	config = function()
	    require("mason").setup()
	end
    },
    {
	"williamboman/mason-lspconfig.nvim",
	config = function()
	    require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls" , "rust_analyzer", "cssls" },
	    })
	end
    },
    {
	"neovim/nvim-lspconfig",
	config = function()
	    local lspconfig = require("lspconfig")
	    lspconfig.lua_ls.setup({})
	    lspconfig.tailwindcss.setup({})
	    lspconfig.rust_analyzer.setup({})
	    lspconfig.cssls.setup({})

	    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
	    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	end
    }
}
