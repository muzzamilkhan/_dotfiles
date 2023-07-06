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
	},
}
M.nvimtree = {
	n = {
		["E"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
		["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
	},
}

return M
