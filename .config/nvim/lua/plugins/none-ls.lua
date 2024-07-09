function config()
	local null_ls = require("null-ls")
	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.diagnostics.terraform_validate,
			null_ls.builtins.diagnostics.tfsec,
			null_ls.builtins.formatting.terraform_fmt,
    },
	})

	vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
end

return {
	"nvimtools/none-ls.nvim",
	config = config,
}
