return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			local esp32 = require("esp32")
			if esp32 == nil or esp32.lsp_config == nil then
				return opts
			end
			opts.servers = opts.servers or {}
			opts.servers.clangd = esp32.lsp_config()
			return opts
		end,
	},
}
