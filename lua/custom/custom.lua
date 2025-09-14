-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
-- Enable line wrapping
vim.opt.wrap = true

-- Enable wrapping in diff mode
vim.opt.diffopt:append("followwrap")

-- Optional: Better wrapping behavior
vim.opt.linebreak = true
vim.opt.showbreak = "↪ "
vim.opt.breakindent = true
}
