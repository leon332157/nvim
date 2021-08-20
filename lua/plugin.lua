local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'andweeb/presence.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {

        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = function()
            require("pluginConfig.telescope")
        end
    }
    use "Pocco81/AutoSave.nvim"
    use "glepnir/dashboard-nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use 'Mofiqul/vscode.nvim' -- VSCode color theme
    use 'kaicataldo/material.vim' -- Material Theme
    use 'fratajczak/one-monokai-vim' -- Monokai 
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }
    use 'shaunsingh/moonlight.nvim'
    use "rcarriga/nvim-notify"
    use 'sainnhe/gruvbox-material'
    use 'vim-airline/vim-airline'
use {
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
			config = function()
				require("pluginConfig.treesitter")
			end
		}
end)
