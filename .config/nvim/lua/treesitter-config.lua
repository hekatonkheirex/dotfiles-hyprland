vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html", "javascript", "lua", "python", "hyprlang"},
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
  },
  autopairs = {
    enable = true
  }
}
