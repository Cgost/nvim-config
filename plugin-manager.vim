" plugin-manager.vim

" 使用 vim-plug 安裝插件
call plug#begin('~/.vim/plugged')

" 安裝 tokyonight 主題
Plug 'folke/tokyonight.nvim'

" 安裝 nightfox.nvim 主題
Plug 'EdenEast/nightfox.nvim'

call plug#end()

" 使用 packer 安裝插件
lua << EOF
require('packer').startup(function(use)
  -- Packer 本身
  use 'wbthomason/packer.nvim'

  -- nvim-tree.lua 插件，用來顯示文件樹
  use 'nvim-tree/nvim-tree.lua'

  -- nightfox 插件
  use 'EdenEast/nightfox.nvim'

  -- nvim-autopairs 插件，實現自動補全括號
  use 'windwp/nvim-autopairs'

  -- 安裝 nvim-cmp 插件及其來源
  use {
    'hrsh7th/nvim-cmp',               -- 核心補全插件
    requires = {
      'hrsh7th/cmp-nvim-lsp',         -- LSP 支援
      'hrsh7th/cmp-buffer',           -- 緩衝區補全
      'hrsh7th/cmp-path',             -- 路徑補全
      'saadparwaiz1/cmp_luasnip',     -- Snippet 補全
      'L3MON4D3/LuaSnip',             -- Snippet 引擎
      'hrsh7th/cmp-vsnip',            -- VSnip 支援（可選）
    }
  }

  -- nvim-lspconfig 插件
  use 'neovim/nvim-lspconfig'  -- LSP 支援
  -- 可以在此處添加更多插件...
end)
EOF
