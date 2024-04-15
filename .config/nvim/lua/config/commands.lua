-- vim.notify("Loading commands configuration...", vim.log.levels.DEBUG)

-- Reloads Neovim without exiting
vim.api.nvim_create_user_command('Reload', 'source $MYVIMRC', {})
