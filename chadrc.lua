---@type ChadrcConfig 
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h16"
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_vfx_mode = "wireframe"
end

 local M = {}
 M.ui = {theme = 'catppuccin'}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"
 return M

