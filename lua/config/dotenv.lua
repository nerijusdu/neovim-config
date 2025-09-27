local function load_env(path)
	local file = io.open(path, "r")
	if not file then
		return
	end
	for line in file:lines() do
		local key, value = line:match("^([%w_]+)=(.*)$")
		if key and value then
			-- strip optional quotes
			value = value:gsub("^['\"](.*)['\"]$", "%1")
			vim.env[key] = value
		end
	end
	file:close()
end

-- load .env in your home or project directory
load_env(vim.fn.getcwd() .. "/.env")
