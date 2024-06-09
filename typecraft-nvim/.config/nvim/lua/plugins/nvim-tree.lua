return {
	"nvim-tree/nvim-tree.lua",

	-- "nvim-neo-tree/neo-tree.nvim",
	-- branch = "v3.x",
	-- dependencies = {
	-- 	"nvim-lua/plenary.nvim",
	-- 	"nvim-tree/nvim-web-devicons",
	-- 	"MunifTanjim/nui.nvim",
	-- },
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({

			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 50,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				-- dotfiles = true,
			},
			update_focused_file = {
				enable = true,
			},
		})

		--[[ ["<leader>gr"] = {
			function()
				local node = require("nvim-tree.lib").get_node_at_cursor()
				if not node then
					return
				end
				require("telescope.builtin").live_grep({ search_dirs = { node.absolute_path .. "/*" } })
			end,
			"Grep in current dir",
		}, ]]

		vim.keymap.set("n", "E", "<cmd> NvimTreeFocus <CR>", {})
		vim.keymap.set("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", {})
	end,
}
