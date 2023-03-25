local status, telescope = pcall(require, "telescope")
if not status then
	return
end
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

local fb_actions = require("telescope").extensions.file_browser.actions

telescope.setup({
	defaults = {
		prompt_prefix = " ",
		selection_caret = " ",

		mappings = {
			n = {
				["q"] = actions.close,
			},
		},

		file_ignore_patterns = { "node_modules", ".git", ".idea" },
	},
})

telescope.load_extension("file_browser")

vim.keymap.set("n", ";f", function()
	builtin.find_files({
		hidden = true,
	})
end)
vim.keymap.set("n", ";g", function()
	builtin.live_grep()
end)
vim.keymap.set("n", ";r", function()
	builtin.oldfiles()
end)
vim.keymap.set("n", ";b", function()
	builtin.buffers()
end)
vim.keymap.set("n", ";t", function()
	builtin.help_tags()
end)
vim.keymap.set("n", ";;", function()
	builtin.resume()
end)
vim.keymap.set("n", ";e", function()
	builtin.diagnostics()
end)
