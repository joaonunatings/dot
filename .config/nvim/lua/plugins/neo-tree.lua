function config()
  vim.keymap.set("n", "<C-t>", ":Neotree focus filesystem reveal left<CR>")
  vim.keymap.set("n", "<C-S-t>", ":Neotree close filesystem<CR>")
end

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
  },
  config = config
}
