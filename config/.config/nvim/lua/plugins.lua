vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}, config = function() require'nvim-tree'.setup {} end}
    use {"catppuccin/nvim", as = "catppuccin" }
    use 'rakr/vim-one'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}    
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim' 
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
    
    use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
    use 'fatih/vim-go' 
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
    require('plugins.init')
end)

