local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
    execute 'echo "Packer installed"'
end

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'andweeb/presence.nvim',
        config = function()
            require('pluginConfig.presence')
        end
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('pluginConfig.bufferline')
        end
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = function()
            require('pluginConfig.telescope')
        end
    }
    use {
        'Pocco81/AutoSave.nvim',
        config = function()
            require('pluginConfig.autoSave')
        end
    }
    use 'glepnir/dashboard-nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    --[[use 'Mofiqul/vscode.nvim' -- VSCode color theme
    use 'kaicataldo/material.vim' -- Material Theme
    use 'fratajczak/one-monokai-vim' -- Monokai]]
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function()
            require('pluginConfig.gitsigns')
        end
    }
    -- use 'shaunsingh/moonlight.nvim'
    use 'rcarriga/nvim-notify'
    use 'sainnhe/gruvbox-material'
    use 'eddyekofo94/gruvbox-flat.nvim'
    -- use 'vim-airline/vim-airline'
    use {
        'hoob3rt/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('pluginConfig.treesitter')
        end
    }
    use "folke/lua-dev.nvim"
    use {
        'jghauser/mkdir.nvim',
        config = function()
            require('mkdir')
        end
    }
    use 'dstein64/nvim-scrollview'
end)
