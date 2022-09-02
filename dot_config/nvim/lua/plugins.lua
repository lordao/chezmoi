local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap = nil
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ "git", "clone", "--depth", "1",
        "https://github.com/wbthomason/packer.nvim", install_path })
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use "lewis6991/impatient.nvim"

    use {
        "overcache/NeoSolarized",
        config = function()
            vim.opt.background = "light"
            vim.cmd("colorscheme NeoSolarized")
        end
    }

    use {
        "nvim-lualine/lualine.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true
        },
        config = function()
            require("lualine").setup {
                options = {
                    theme = "solarized_light"
                }
            }
        end
    }

    use {
        "akinsho/bufferline.nvim",
        tag = "v2.*",
        requires = "kyazdani42/nvim-web-devicons",
        after = "NeoSolarized",
        config = function()
            require("bufferline").setup {
                options = {
                    separator_style = "slant"
                }
            }
        end
    }

    use "mhinz/vim-signify"

    use {
        "goolord/alpha-nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end
    }

    use "tpope/vim-surround"

    use {
        "ray-x/navigator.lua",
        requires = {
            {
                "ray-x/guihua.lua",
                run = "cd lua/fzy && make"
            },
            "neovim/nvim-lspconfig",
            {
                "nvim-treesitter/nvim-treesitter",
                run = ":TSUpdate",
                config = function()
                    require("nvim-treesitter.configs").setup {
                        highlight = {
                            enable = true,
                        },
                    }
                end
            },
            "nvim-treesitter/nvim-treesitter-refactor"
        },
        config = function()
            require("navigator").setup()
        end
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("config.indent").rainbow()
        end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)
