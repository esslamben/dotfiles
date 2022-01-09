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
    use { 'ellisonleao/gruvbox.nvim' }
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
    use 'itchyny/lightline.vim'-- Status bar
    use 'fatih/vim-go' -- lsp + go helper funcs
    use 'jparise/vim-graphql' -- graphql file detection, syntax and indentation
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'prettier/vim-prettier',
        run = "yarn npm install --frozen-lockfile --production",
        ft = {
	        'javascript',
	        'typescript', 
            'css', 
            'json',
            'less', 
            'scss', 
            'graphql', 
            'markdown', 
            'vue', 
            'svelte',
            'typescriptreact',
            'javascriptreact',
            'html'
	    },
        config = function()
            vim.cmd("let g:prettier#autoformat = 1")
            vim.cmd("let g:prettier#autoformat_require_pragma = 0")
        end
    }

    -- =======================================--
    --           Workflow plugins             --
    -- =======================================--
	
    require('plugins.init')
end)

