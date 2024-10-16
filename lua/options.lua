require "nvchad.options"

-- add yours here!
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
vim.opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
vim.opt.expandtab = true -- Use spaces inste

require("lspconfig").emmet_ls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(), -- Optional: if you're using nvim-cmp
	filetypes = { "html", "css", "typescriptreact", "javascriptreact", "javascript.jsx", "typescript.tsx" }, -- Add any other filetypes
	init_options = {
		html = {
			options = {
				-- Example of Emmet configuration
				["bem.enabled"] = true,
			},
		},
	},
})

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
-- Enable persistent undo
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath('config') .. '/undo'
vim.opt.clipboard = ""
vim.opt.relativenumber = true
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
