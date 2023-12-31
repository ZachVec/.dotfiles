-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()


-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list,           -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function,      -- Specifies code to run after this plugin is loaded
--     requires = string or list,        -- Specifies plugin dependencies. See "dependencies".
--     ft = string or list,              -- Specifies filetypes which load this plugin.
--     run = string, function, or table, -- Specify operations to be run after successful installs/updates of a plugin
return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        ---------------------------------------
        -- NOTE: PUT YOUR THIRD PLUGIN HERE --
        ---------------------------------------
        use { 'ellisonleao/gruvbox.nvim' }
        use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
        use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { {'nvim-lua/plenary.nvim'} } }
        use { 'ggandor/leap.nvim', requires = { { 'tpope/vim-repeat' } } }
        use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }
        use { 'voldikss/vim-floaterm' }

        -- lsps
        use {
            "neovim/nvim-lspconfig",
            requires = {
                "williamboman/mason.nvim",
                "williamboman/mason-lspconfig.nvim",
            },
            run = ":MasonUpdate"
        }
        use { "j-hui/fidget.nvim", tag = "legacy"}
                

        -- auto completion
        use { "L3MON4D3/LuaSnip"}
        use { "hrsh7th/nvim-cmp", requires = { "hrsh7th/cmp-nvim-lsp", } }


        -- Git related
        use "tpope/vim-fugitive"
        use "tpope/vim-rhubarb"
        use "lewis6991/gitsigns.nvim"

        -- Additional plugins
        use "lukas-reineke/indent-blankline.nvim"  -- Add indentation guides even on blank lines
        use "numToStr/Comment.nvim"  -- "gc" to comment out regions/lines
        use "tpope/vim-sleuth" --Detect tabstop and shiftwidth automatically
        use {"nvim-telescope/telescope-fzf-native.nvim", run = "make", cond = vim.fn.executable "make" == 1 }
        


        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if packer_bootstrap then
            require('packer').sync()
        end
    end)

