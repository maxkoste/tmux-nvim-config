-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--require("lspconfig").jdtls.setup({ cmd = { "jdtls" } })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})

vim.cmd([[
   highlight Normal guibg=NONE ctermbg=NONE
   highlight NormalNC guibg=NONE ctermbg=NONE
   highlight SignColumn guibg=NONE ctermbg=NONE
   highlight VertSplit guibg=NONE ctermbg=NONE
 ]])

vim.cmd([[
   highlight NormalFloat guibg=NONE ctermbg=NONE
   highlight FloatBorder guibg=NONE ctermbg=NONE
 ]])

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.autoindent = true
    vim.opt_local.smartindent = true
  end,
})
