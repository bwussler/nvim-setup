require("mplse.set")
require("mplse.remap")
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd(":NvimTreeToggle")
    vim.cmd(":Ex")
end,
})
