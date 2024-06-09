return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
			},
		})

		vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
		-- ["<leader>gr"] = {
		-- 	function()
		-- 		local node = require("nvim-tree.lib").get_node_at_cursor()
		-- 		if not node then
		-- 			return
		-- 		end
		-- 		require("telescope.builtin").live_grep({ search_dirs = { node.absolute_path .. "/*" } })
		-- 	end,
		-- 	"Grep in current dir",
		-- },
	end,
}
