function config()
  local config = require("nvim-treesitter.configs")
  config.setup({
    ensure_installed = { "lua", "rust" },
    highlight = { enable = true },
    indent = { enable = true }, 
  })
end
return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = config
}
