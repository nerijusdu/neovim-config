return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			local esp32 = require("esp32")
			opts.servers = opts.servers or {}
			opts.servers.clangd = esp32.lsp_config()
			return opts
		end,
	},
}
