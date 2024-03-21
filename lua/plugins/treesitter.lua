return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  event = "VeryLazy",
  config = function()
    require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "c", 
        "lua",
        "luadoc",
        "vim", 
        "vimdoc", 
        "query", 
        "elixir", 
        "heex", 
        "javascript", 
        "html", 
        "python"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}

