-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'nvim-lualine/lualine.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'mhartington/formatter.nvim'
    use 'folke/tokyonight.nvim'
    use 'mfussenegger/nvim-lint'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'jakewvincent/mkdnflow.nvim', tag = 'v1.2.4' }

    use {
        'folke/todo-comments.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } },
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'ThePrimeagen/harpoon',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- NOTE: This is where your plugins related to LSP can be installed.
    --  The configuration is done below. Search for lspconfig to find it below.
    use { -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        requires = {
            -- Automatically install LSPs to stdpath for neovim
            { 'mason-org/mason.nvim', tag = 'v2.0.0' },
            { 'mason-org/mason-lspconfig.nvim', tag = 'v2.0.0' },

            -- Useful status updates for LSP
            -- NOTE: `opt = true` is the same as calling `require('fidget').setup({})`
            { 'j-hui/fidget.nvim' },

            -- Additional lua configuration, makes nvim stuff amazing!
            'folke/neodev.nvim',
        },
    }

    use { -- Autocompletion
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip', 'hrsh7th/cmp-buffer' },
    }
end)
