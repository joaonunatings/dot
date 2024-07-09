function config()
  local config = require("nvim-treesitter.configs")
  config.setup({
    auto_install = true,
    ensure_installed = {
      "hcl",
      "terraform",
    },
    highlight = { enable = true },
    indent = { enable = true },
  })
end

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = config
}
