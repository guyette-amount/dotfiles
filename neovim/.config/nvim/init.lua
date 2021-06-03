-- Load plugins with packer
require "settings"
require "plugins"
require "themes"

-- key bindings
vim.g.mapleader = ','

-- Plugin Configuration
require 'nvimTree'
require 'file-icons' -- Icons for nvimTree
require "bufferline-config"
require "galaxy-line-config"
require "telescope-config"
require 'indent-blankline-config'
require 'gitsigns-config'

require 'nvim-autopairs'.setup()
require 'colorizer'.setup()