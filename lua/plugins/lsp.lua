return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			opts.servers = opts.servers or {}

			if vim.env.PLUGIN_ESP32 == "true" then
				local esp32 = require("esp32")
				opts.servers.clangd = esp32.lsp_config()
			end

			if opts.servers.eslint then
				opts.servers.eslint.handlers = {
					["textDocument/publishDiagnostics"] = function(_, result, ctx)
						if result.diagnostics ~= nil then
							for _, d in ipairs(result.diagnostics) do
								if d.severity == vim.diagnostic.severity.ERROR then
									d.severity = vim.diagnostic.severity.WARN
								end
							end
						end
						vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx)
					end,
				}
			end

			return opts
		end,
	},
}
