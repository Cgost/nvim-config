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
  -- 可以在此處添加更多插件...
end)
EOF
