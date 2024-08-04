return {
  "nvim-treesitter/nvim-treesitter",
  depencies = { "tree-sitter-grammars/tree-sitter-hyprlang" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "html", "javascript", "lua", "python", "hyprlang" },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      autotag = {
        enable = true,
      },
      autopairs = {
        enable = true,
      },
    })
  end,
}
