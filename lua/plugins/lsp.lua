return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			if vim.env.PLUGIN_ESP32 == "true" then
				local esp32 = require("esp32")
				opts.servers = opts.servers or {}
				opts.servers.clangd = esp32.lsp_config()
				return opts
			end
		end,
	},
}
