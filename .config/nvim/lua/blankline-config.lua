require("ibl").setup {}
require("ibl").overwrite {
  exclude = { 
    filetypes = { "dashboard", "NvimTree", "packer", "lsp-installer" },
    buftypes = { "terminal" },
  },
}
