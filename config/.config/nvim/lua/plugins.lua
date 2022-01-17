vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
      
    -- =======================================--
    --               UI plugins               --
    -- =======================================--
    
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }

    -- =======================================--
    --             Syntax plugins             --
    -- =======================================--
    
    use 'Mofiqul/dracula.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }    
    -- =======================================--
    --      IDE (completion, debugging)       --
    -- =======================================-- 
    
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'fatih/vim-go' -- lsp + go helper funcs
    use 'jparise/vim-graphql' -- graphql file detection, syntax and indentation
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- =======================================--
    --           Workflow plugins             --
    -- =======================================--
	
    require('plugins.init')
end)

