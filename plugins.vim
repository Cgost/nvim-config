" plugins.vim

lua << EOF

-- 配置 nvim-tree.lua 插件
require("nvim-tree").setup({
  -- 基本配置
  auto_reload_on_write = true,  -- 當文件更改時自動重新加載
  update_cwd = true,            -- 自動更新當前工作目錄
  view = {
    width = 30,                 -- 設定文件樹的寬度
    side = "left",              -- 設置文件樹顯示在左邊
  }
})

-- 配置 nvim-autopairs 插件
require('nvim-autopairs').setup({
  check_ts = true,  -- 開啟 Treesitter 支援，讓插件可以識別語法樹並自動補全括號
})

EOF
