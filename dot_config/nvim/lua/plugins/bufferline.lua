return {
    "akinsho/bufferline.nvim",
    version="v4.*",
    dependencies = "kyazdani42/nvim-web-devicons",
    init = function()
        require("bufferline").setup{
            options = {
                separator_style = "slant"
            }
        }
    end
}
