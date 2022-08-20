return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use('folke/tokyonight.nvim')
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use('neovim/nvim-lspconfig')
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp',
        config = function()
            require 'cmp'.setup {
                sources = {
                    { name = 'cmp_tabnine' },
                },
            }
        end
    }
    use("onsails/lspkind-nvim")

    use("L3MON4D3/LuaSnip")
    use('lewis6991/gitsigns.nvim')
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
    })

    use("ThePrimeagen/git-worktree.nvim")
end)
