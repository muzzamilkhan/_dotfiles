local M = {}

M.disabled = {
	i = {
		-- go to  beginning and end
		["<C-b>"] = "",
		["<C-e>"] = "",

		-- navigate within insert mode
		["<C-h>"] = "",
		["<C-l>"] = "",
		["<C-j>"] = "",
		["<C-k>"] = "",
	},
}

M.general = {
	n = {
		["L"] = { ":bnext<CR>" },
		["H"] = { ":bprevious<CR>" },
		["<leader>Q"] = { ':%bdelete|edit #|normal `"<CR>', "Close all other buffers" },
	},
}
M.nvimtree = {
	n = {
		["E"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
		["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
		["<leader>gr"] = {
			function()
				local node = require("nvim-tree.lib").get_node_at_cursor()
				if not node then
					return
				end
				require("telescope.builtin").live_grep({ search_dirs = { node.absolute_path .. "/*" } })
			end,
			"Grep in current dir",
		},
	},
}

return M
