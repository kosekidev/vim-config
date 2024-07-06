require("config.options")
require("config.remap")

-- Show light theme automatically during the day
local current_time = os.date("*t")
if current_time.hour >= 9 and current_time.hour <= 20 then
	vim.api.nvim_set_option("background", "light")
end
