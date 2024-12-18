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



lua << EOF
  -- 啟用 nvim-cmp 插件
  local cmp = require'cmp'

  cmp.setup({
    -- 設定補全行為
    completion = {
      autocomplete = { cmp.TriggerEvent.TextChanged },  -- 開始補全時
    },
    -- 設定鍵位映射
    mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),         -- 選擇上一個補全項目
      ['<C-n>'] = cmp.mapping.select_next_item(),         -- 選擇下一個補全項目
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),            -- 向上滾動文件
      ['<C-f>'] = cmp.mapping.scroll_docs(4),             -- 向下滾動文件
      ['<C-Space>'] = cmp.mapping.complete(),             -- 啟動補全
      ['<C-e>'] = cmp.mapping.close(),                    -- 關閉補全
      ['<Tab>'] = cmp.mapping.confirm({ select = true })  -- 用 Tab 插入選中的項目
    },
    -- 設定補全來源
    sources = {
      { name = 'nvim_lsp' },        -- LSP 補全
      { name = 'buffer' },          -- 緩衝區補全
      { name = 'path' },            -- 路徑補全
      { name = 'luasnip' },         -- Snippet 補全
    },
    -- 設定 Snippet 引擎
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)  -- 使用 LuaSnip 擴展 Snippet
      end,
    },
  })
EOF

lua << EOF
  -- 配置 LSP
  local lspconfig = require'lspconfig'

  -- 例如設置 Python 的 LSP (pylsp)
  lspconfig.pylsp.setup{}

  -- 設置其他語言的 LSP
  -- lspconfig.tsserver.setup{} -- 用於 TypeScript/JavaScript
  -- lspconfig.html.setup{}     -- 用於 HTML
  -- lspconfig.cssls.setup{}   -- 用於 CSS
EOF
