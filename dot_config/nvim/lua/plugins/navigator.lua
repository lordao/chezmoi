return {
    "ray-x/navigator.lua",
    init = function()
        require 'navigator'.setup()
    end,
    dependencies = {
        "neovim/nvim-lspconfig",
        {
            "ray-x/guihua.lua",
            build = "cd lua/fzy && make"
        },
        {
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
            config = function()
                require("nvim-treesitter.configs").setup {
                    highlight = {
                        enable = true
                    }
                }
            end,
            dependencies = {
                "nvim-treesitter/nvim-treesitter-refactor"
            }
        }
    }
}
