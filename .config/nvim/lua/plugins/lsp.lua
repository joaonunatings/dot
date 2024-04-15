function masonConfig()
  require("mason").setup()
end

function masonLspConfig()
  require("mason-lspconfig").setup({
    ensure_installed = {
      "lua_ls"
    }
  })
end

function nvimLspConfig()
  local lspConfig = require("lspconfig")
  lspConfig.lua_ls.setup({})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
end

return {
  {
    "williamboman/mason.nvim",
    config = masonConfig
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = masonLspConfig
  },
  {
    "neovim/nvim-lspconfig",
    config = nvimLspConfig,
  }
}
