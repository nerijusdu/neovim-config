-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.dotenv")
require("config.lazy")

-- TODO:
-- gF not working

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.schedule(function()
			vim.cmd("silent! bufdo filetype detect")
		end)
	end,
})
