-- ~/.config/nvim/lua/custom/init.lua
-- Swap ; and : in normal mode for easier command entry
vim.keymap.set('n', ';', ':')
-- vim.keymap.set('n', ':', ';')

-- Simple toggle for absolute line numbers in the current buffer
local function toggle_numbers()
  local bufnr = vim.api.nvim_get_current_buf()
  local is_on = vim.api.nvim_buf_get_option(bufnr, "number")
  vim.api.nvim_buf_set_option(bufnr, "number", not is_on)
end

vim.keymap.set("n", "<leader>l", toggle_numbers, { noremap = true, silent = true, desc = "Toggle line numbers" })

-- Enable line wrapping
vim.opt.wrap = true

-- Enable wrapping in diff mode
vim.opt.diffopt:append("followwrap")

-- Optional: Better wrapping behavior
vim.opt.linebreak = true
vim.opt.showbreak = "↪ "
vim.opt.breakindent = true

