-- ~/.config/nvim/lua/plugins/oscyank.lua
return {
  "ojroques/vim-oscyank",
  init = function()
    vim.g.oscyank_silent = 1
    
    -- Automatically copy to clipboard using OSC 52 after any yank operation
    vim.api.nvim_create_autocmd("TextYankPost", {
      group = vim.api.nvim_create_augroup("osc_yank", { clear = true }),
      callback = function()
        if vim.v.event.operator == 'y' then
          vim.fn.OSCYankRegister('"')
        end
      end,
    })
    
    -- Manual keymaps (as backup/alternative)
    -- Visual mode: send selection
    vim.keymap.set("x", "<leader>y", ":OSCYank<CR>", { silent = true })
    -- Normal mode: send + register
    vim.keymap.set("n", "<leader>y", ":OSCYankReg +<CR>", { silent = true })
  end,
}

