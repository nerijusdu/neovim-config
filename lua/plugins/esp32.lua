return {
	"Aietes/esp32.nvim",
	opts = {
		build_dir = "build",
	},
	enabled = vim.env.PLUGIN_ESP32 == "true",
}
