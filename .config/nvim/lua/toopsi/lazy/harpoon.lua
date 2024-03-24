return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon2")

			-- required
			harpoon:setup()
			-- required

			vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
			vim.keymap.set("n", "<c-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

			vim.keymap.set("n", "<c-h>", function() harpoon:list():select(1) end)
			vim.keymap.set("n", "<c-t>", function() harpoon:list():select(2) end)
			vim.keymap.set("n", "<c-n>", function() harpoon:list():select(3) end)
			vim.keymap.set("n", "<c-s>", function() harpoon:list():select(4) end)

			-- toggle previous & next buffers stored within harpoon list
			vim.keymap.set("n", "<c-s-p>", function() harpoon:list():prev() end)
			vim.keymap.set("n", "<c-s-n>", function() harpoon:list():next() end)
		end,
	},
}
