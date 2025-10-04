-- ~/.config/nvim/lua/plugins/oscyank.lua
return {
  "ojroques/vim-oscyank",
  init = function()
    vim.g.oscyank_silent = 1
    -- Visual mode: send selection
    vim.keymap.set("x", "<leader>y", ":OSCYank<CR>", { silent = true })
    -- Normal mode: send + register
    vim.keymap.set("n", "<leader>y", ":OSCYankReg +<CR>", { silent = true })
  end,
}

